import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/game_provider.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(gamesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Game Catalog'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              context.push('/settings');
            },
          ),
        ],
      ),
      body: games.when(
        data: (items) {
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final game = items[index];

              return Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                child: ListTile(
                  onTap: () {
                    context.push(
                      '/details',
                      extra: game,
                    );
                  },
                  leading: Image.network(
                    game.image,
                    width: 70,
                    fit: BoxFit.cover,
                  ),
                  title: Text(game.name),
                  subtitle: Text(
                    '⭐ ${game.rating}',
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    size: 18,
                  ),
                ),
              );
            },
          );
        },
        loading: () =>
            const Center(
              child: CircularProgressIndicator(),
            ),
        error: (e, s) =>
            Center(
              child: Text(e.toString()),
            ),
      ),
    );
  }
}