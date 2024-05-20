import 'package:flutter/material.dart';
import 'package:mockapi_2024/app/app.locator.dart';
import 'package:mockapi_2024/app/app.router.dart';
import 'package:mockapi_2024/core/models/game.dart';
import 'package:mockapi_2024/core/services/game_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class GameListViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final GameService _gameService = locator<GameService>();
  final List<GameModel> _games = [];
  List<GameModel> get games => _games;

  final gamesUpdated = ValueNotifier<bool>(false);

  void navigateToDetailScreen(String gameId) {
    _navigationService.navigateToGameDetailScreen(gameId: gameId);
  }

  GameListViewModel() {
    loadGames();
  }

  //Refresh the screen
  void onGamesUpdated() {
    if (gamesUpdated.value) {
      rebuildUi();
    }
  }

  Future<void> loadGames() async {
    setBusy(true);
    final response = await _gameService.list();
    response.fold(
      (error) {
        // Handle error
        print(error);
        setBusy(false);
      },
      (games) {
        _games.clear();
        _games.addAll(games);
        setBusy(false);
        notifyListeners();
        gamesUpdated.value = true;
      },
    );
  }

  void navigateToGameForm() {
    _navigationService.navigateToGameFormScreen();
  }
}
