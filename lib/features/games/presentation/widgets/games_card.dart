import 'package:flutter/material.dart';
import '../../data/models/game_model.dart';

class GamesCard extends StatelessWidget {
  final GameModel game;

  const GamesCard({super.key, required this.game});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(game.image, width: 60, fit: BoxFit.cover),
        title: Text(game.name),
        subtitle: Text('⭐ ${game.rating}'),
      ),
    );
  }
}