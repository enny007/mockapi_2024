import 'package:fpdart/fpdart.dart';
import 'package:mockapi_2024/app/app.locator.dart';
import 'package:mockapi_2024/app/app.router.dart';
import 'package:mockapi_2024/core/models/game.dart';
import 'package:mockapi_2024/core/services/game_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../core/services/game_form_service.dart';

class GameDetailViewModel extends ReactiveViewModel {
  final String gameId;
  final GameService _gameService = locator<GameService>();
  final _gameFormService = locator<GameFormService>();
  final _navigation = locator<NavigationService>();

  GameDetailViewModel({required this.gameId}) {
    getGameDetail(gameId);
  }
  //Have access to my model here
  GameModel _game = GameModel.empty();

  GameModel get game => _game;

  Future<void> getGameDetail(String gameId) async {
    setBusy(true);

    final result = await _gameService.retrieve(gameId);

    result.fold(
      (error) {
        print(error);
        setBusy(false);
      },
      (game) {
        _game = game;
        setBusy(false);
        notifyListeners();
      },
    );
  }

  Future<void> deleteGame(GameModel gameModel) async {
    setBusyForObject(game, true);
    final result = await _gameService.remove(gameModel.id!);
    result.fold(
      (error) {
        // Handle error
        print(error);
        setBusyForObject(game, false);
      },
      (success) {
        // Remove game from the list if successful
        right(success);
        notifyListeners();
        setBusyForObject(game, false);
        _navigation.back();
      },
    );
  }

  void loadEntries() {
    _gameFormService.loadEntry(game);
    _navigation.navigateToGameFormScreen();
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_gameFormService];
}
