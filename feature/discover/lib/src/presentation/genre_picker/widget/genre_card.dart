import 'package:design_system/design_system.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    Key? key,
    required this.genre,
  }) : super(key: key);

  final Genre genre;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Align(
            child: TextCaption(text: genre.name),
            alignment: Alignment.bottomLeft,
          )
        ],
      ),
    );
  }
}
