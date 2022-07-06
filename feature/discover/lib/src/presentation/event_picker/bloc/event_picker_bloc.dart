import 'package:core/core.dart';
import 'package:discover/src/data/audio_player_manager.dart';
import 'package:discover/src/domain/model/event.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:discover/src/domain/use_case/get_events_use_case.dart';
import 'package:discover/src/domain/use_case/get_tracks_use_case.dart';
import 'package:discover/src/presentation/event_picker/model/event_picker_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'event_picker_bloc.freezed.dart';

part 'event_picker_event.dart';

part 'event_picker_state.dart';

@injectable
class EventPickerBloc extends Bloc<EventPickerEvent, EventPickerState> {
  EventPickerBloc(
    this._linkManager,
    this._getEventsUseCase,
    this._getTracksUseCase,
    @factoryParam this._genre,
  ) : super(EventPickerState.initial()) {
    on<EventPickerEvent>((event, emit) => event.map(
          load: (_) => _onLoad(emit),
          play: (event) => _onPlay(emit, event.event),
          openWeblink: (event) => _onOpenWeblink(event.event),
        ));
    add(EventPickerEvent.load());
  }

  final Genre _genre;
  final LinkManager _linkManager;
  final GetEventsUseCase _getEventsUseCase;
  final GetTracksUseCase _getTracksUseCase;

  void _onLoad(Emitter<EventPickerState> emit) async {
    emit(EventPickerState.loading());

    final eventsResult = await _getEventsUseCase(genre: _genre);
    eventsResult.fold(
      onSuccess: (events) {
        final content = events.map((event) => EventPickerItem(event: event)).toList(growable: false);
        emit(EventPickerState.content(content));
      },
      onFailure: (_) => emit(EventPickerState.error()),
    );
  }

  void _onPlay(Emitter<EventPickerState> emit, Event event) async {
    final tracksResult = await _getTracksUseCase(event: event);
    tracksResult.doOnSuccess((tracks) async {
      if (tracks.isEmpty) {
        return;
      }

      state.mapOrNull(content: (state) {
        final content = state.content.map((item) => item.copyWith(isPlaying: false)).toList();
        final playIndex = content.indexWhere((item) => item.event.id == event.id);
        content[playIndex] = content[playIndex].copyWith(isPlaying: true);
        emit(EventPickerState.content(content));
      });

      await AudioPlayerManager.play(tracks: tracks);
    });
  }

  void _onOpenWeblink(Event event) {
    _linkManager.openWebLink(event.url);
  }
}
