import 'package:flutter/material.dart';
import '../../data/models/game_model.dart';

class GameDetailPage extends StatelessWidget {
  final GameModel game;

  const GameDetailPage({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(game.name),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: game.id,
              child: Image.network(
                game.image,
                width: double.infinity,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    game.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    '⭐ Avaliação: ${game.rating}',
                    style:
                        const TextStyle(fontSize: 18),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Sobre o jogo',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'Este jogo foi carregado pela API RAWG. Aqui você poderá exibir descrição, gêneros, plataformas e outras informações futuramente.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}