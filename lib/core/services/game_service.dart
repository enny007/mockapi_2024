import 'package:fpdart/fpdart.dart';
import 'package:mockapi_2024/core/models/game.dart';
import 'package:mockapi_2024/core/base/base_service.dart';

class GameService extends BaseService {
  static const basePath = '/game';
  //GET LIST OF GAMES
  Future<Either<String, List<GameModel>>> list() async {
    final response = await get(basePath);

    return response.fold(
      (error) => left(error),
      (result) => right(
        result['data']
            .map<GameModel>((json) => GameModel.fromJson(json))
            .toList(),
      ),
    );
  }

  ///GET A SINGULAR GAME OBJECT
  Future<Either<String, GameModel>> retrieve(String id) async {
    final response = await get('$basePath/$id');

    return response.fold(
      (error) => left(error),
      (result) => right(
        GameModel.fromJson(result['data']),
      ),
    );
  }

  //CAVAET combining the create and update methods together.
  Future<Either<String, GameModel>> save(GameModel game) async {
    return game.id!.isEmpty ? _create(game) : _update(game.id ?? '', game);
  }

  //UPDATE GAME, EDIT
  Future<Either<String, GameModel>> _update(String id, GameModel game) async {
    final response = await put('$basePath/$id', data: game.toJson());

    return response.fold(
      (error) => left(error),
      (result) => right(
        GameModel.fromJson(result['data']),
      ),
    );
  }

  //CREATE GAME
  Future<Either<String, GameModel>> _create(GameModel game) async {
    final response = await post(basePath, data: game.toJson());

    return response.fold(
      (error) => left(error),
      (result) => right(
        GameModel.fromJson(result['data']),
      ),
    );
  }

  //DELETE GAME
  Future<Either<String, bool>> remove(String id) async {
    final response = await delete('$basePath/$id');

    return response.fold(
      (error) => left(error),
      (result) => right(true),
    );
  }
}
