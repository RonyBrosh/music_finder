// ignore_for_file: unused_element, unused_field, camel_case_types, annotate_overrides, prefer_single_quotes
// GENERATED FILE, do not edit!
import 'package:i69n/i69n.dart' as i69n;

String get _languageCode => 'en';
String get _localeName => 'en';

String _plural(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.plural(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _ordinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.ordinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);
String _cardinal(int count,
        {String? zero,
        String? one,
        String? two,
        String? few,
        String? many,
        String? other}) =>
    i69n.cardinal(count, _languageCode,
        zero: zero, one: one, two: two, few: few, many: many, other: other);

class DiscoverTranslation implements i69n.I69nMessageBundle {
  const DiscoverTranslation();
  Genre_pickerDiscoverTranslation get genre_picker =>
      Genre_pickerDiscoverTranslation(this);
  Event_pickerDiscoverTranslation get event_picker =>
      Event_pickerDiscoverTranslation(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'genre_picker':
        return genre_picker;
      case 'event_picker':
        return event_picker;
      default:
        return key;
    }
  }
}

class Genre_pickerDiscoverTranslation implements i69n.I69nMessageBundle {
  final DiscoverTranslation _parent;
  const Genre_pickerDiscoverTranslation(this._parent);
  String get title => "Pick a Genre";
  ErrorGenre_pickerDiscoverTranslation get error =>
      ErrorGenre_pickerDiscoverTranslation(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'error':
        return error;
      default:
        return key;
    }
  }
}

class ErrorGenre_pickerDiscoverTranslation implements i69n.I69nMessageBundle {
  final Genre_pickerDiscoverTranslation _parent;
  const ErrorGenre_pickerDiscoverTranslation(this._parent);
  String get title => "Failed to load genres...";
  String get content => "Swipe down to refresh the page";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'content':
        return content;
      default:
        return key;
    }
  }
}

class Event_pickerDiscoverTranslation implements i69n.I69nMessageBundle {
  final DiscoverTranslation _parent;
  const Event_pickerDiscoverTranslation(this._parent);
  String title(String genre) => "$genre events";
  ErrorEvent_pickerDiscoverTranslation get error =>
      ErrorEvent_pickerDiscoverTranslation(this);
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title ':
        return title;
      case 'error':
        return error;
      default:
        return key;
    }
  }
}

class ErrorEvent_pickerDiscoverTranslation implements i69n.I69nMessageBundle {
  final Event_pickerDiscoverTranslation _parent;
  const ErrorEvent_pickerDiscoverTranslation(this._parent);
  String get title => "Failed to load events...";
  String get content => "Refresh the page or pick a different genre";
  Object operator [](String key) {
    var index = key.indexOf('.');
    if (index > 0) {
      return (this[key.substring(0, index)]
          as i69n.I69nMessageBundle)[key.substring(index + 1)];
    }
    switch (key) {
      case 'title':
        return title;
      case 'content':
        return content;
      default:
        return key;
    }
  }
}
