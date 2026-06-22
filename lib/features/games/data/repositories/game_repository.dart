import '../models/game_model.dart';
import '../sources/remote/game_remote_source.dart';

class GameRepository {
  final GameRemoteSource remoteSource;

  GameRepository(this.remoteSource);

  Future<List<GameModel>> getGames() {
    return remoteSource.getGames();
  }
}