import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapi_2024/core/models/game.dart';
import 'package:mockapi_2024/core/services/game_service.dart';
//to get a game model object
final gameDetailProvider =
    FutureProvider.family<GameModel?, String>((ref, id) async {
  final result = await GameService().retrieve(id);

  return result.fold(
    (error) {
      print(error);
      return null;
    },
    (game) => game,
  );
});
