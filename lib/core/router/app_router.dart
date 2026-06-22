import 'package:go_router/go_router.dart';

import '../../features/games/data/models/game_model.dart';
import '../../features/games/presentation/screens/home_screen.dart';
import '../../features/games/presentation/screens/game_detail_page.dart';
import '../../features/games/presentation/screens/favorites_screen.dart';
import '../../features/games/presentation/screens/settings_screen.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/details',
      builder: (context, state) {
        final game = state.extra as GameModel;

        return GameDetailPage(
          game: game,
        );
      },
    ),

    GoRoute(
      path: '/favorites',
      builder: (context, state) => const FavoritesScreen(),
    ),

    GoRoute(
      path: '/settings',
      builder: (context, state) => const SettingsScreen(),
    ),
  ],
);