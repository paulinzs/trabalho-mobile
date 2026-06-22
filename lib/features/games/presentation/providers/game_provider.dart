import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/dio_client.dart';
import '../../data/models/game_model.dart';
import '../../data/repositories/game_repository.dart';
import '../../data/sources/remote/game_remote_source.dart';

final dioProvider = Provider<Dio>((ref) {
  return DioClient.create();
});

final gameRepositoryProvider = Provider<GameRepository>((ref) {
  final dio = ref.read(dioProvider);

  return GameRepository(
    GameRemoteSource(dio),
  );
});

final gamesProvider =
    FutureProvider<List<GameModel>>((ref) async {
  final repository = ref.read(gameRepositoryProvider);

  return repository.getGames();
});