import 'package:flutter/material.dart';

class FavoriteTab extends StatelessWidget {
  const FavoriteTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: 80,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(80)),
              gradient: LinearGradient(
                  colors: [Colors.blue.shade800, Colors.red],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomLeft)),
        )
      ],
    );
  }
}
