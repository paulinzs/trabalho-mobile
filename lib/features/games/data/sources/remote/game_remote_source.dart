import 'package:dio/dio.dart';

import '../../../data/models/game_model.dart';

class GameRemoteSource {
  final Dio dio;

  GameRemoteSource(this.dio);

  Future<List<GameModel>> getGames() async {
    const apiKey = 'a6451e21bb444a3ba9c5e89db6f05b89';

    final response = await dio.get(
      'games',
      queryParameters: {
        'key': apiKey,
      },
    );

    final List results = response.data['results'];

    return results
        .map((e) => GameModel.fromJson(e))
        .toList();
  }
}