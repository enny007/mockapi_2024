import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockapi_2024/src/models/game.dart';
import 'package:mockapi_2024/src/services/game_service.dart';

class GameListProvider extends StateNotifier<List<GameModel>> {
  final Ref ref;
  GameListProvider(this.ref) : super([]) {
    load();
  }

  Future<void> load() async {
    final response = await GameService().list();

    response.fold(
      (error) => print(error),
      (games) {
        state = games;
      },
    );
  }

  Future<Either<String, bool>> delete(
    GameModel game,
  ) async {
    final result = await GameService().remove(game.id!);

    return result.fold((l) => left(l), (success) {
      ref.invalidateSelf();
      return right(success);
    });
  }
}

final gameListProvider =
    StateNotifierProvider<GameListProvider, List<GameModel>>((ref) {
  return GameListProvider(ref);
});
