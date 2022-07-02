import 'package:design_system/design_system.dart';
import 'package:discover/src/domain/model/genre.dart';
import 'package:flutter/material.dart';

class GenreCard extends StatelessWidget {
  const GenreCard({
    Key? key,
    required this.genre,
    required this.onTap,
  }) : super(key: key);

  final Genre genre;
  final void Function(Genre) onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => onTap(genre),
        child: Stack(
          children: [
            Align(
              child: TextCaption(text: genre.name),
              alignment: Alignment.bottomLeft,
            )
          ],
        ),
      ),
    );
  }
}
