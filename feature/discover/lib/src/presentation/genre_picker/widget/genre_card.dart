import 'package:discover/src/domain/model/genre.dart';
import 'package:flutter/widgets.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    Key? key,
    required this.genre,
  }) : super(key: key);

  final Genre genre;

  @override
  Widget build(BuildContext context) {
    return Text(genre.name);
  }
}
