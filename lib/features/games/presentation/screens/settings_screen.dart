import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:game_app/features/games/presentation/providers/theme_provider.dart';

// ignore: unused_import
import '../../../../core/providers/theme_provider.dart';


class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final darkMode = ref.watch(themeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      body: ListView(
        children: [
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: const Text('Modo Escuro'),
            value: darkMode,
            onChanged: (value) {
              ref.read(themeProvider.notifier).state =
                  value;
            },
          ),
        ],
      ),
    );
  }
}