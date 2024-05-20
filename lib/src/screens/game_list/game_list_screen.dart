import 'package:flutter/material.dart';
import 'package:mockapi_2024/src/components/game_list_tile.dart';
import 'package:mockapi_2024/src/screens/game_list/game_list_view_model.dart';
import 'package:stacked/stacked.dart';

class GameListScreen extends StackedView<GameListViewModel> {
  const GameListScreen({super.key});

  @override
  Widget builder(
      BuildContext context, GameListViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Games'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () {
          return viewModel.loadGames();
        },
        child: viewModel.isBusy
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: viewModel.games.length,
                itemBuilder: (BuildContext context, int index) {
                  final game = viewModel.games[index];
                  return GameListTile(game: game);
                },
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.navigateToGameForm();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  GameListViewModel viewModelBuilder(BuildContext context) {
    return GameListViewModel();
  }

  @override
  void onViewModelReady(GameListViewModel viewModel) {
    viewModel.gamesUpdated.addListener(() {
      viewModel.onGamesUpdated();
    });
    super.onViewModelReady(viewModel);
  }

  @override
  void onDispose(GameListViewModel viewModel) {
    viewModel.gamesUpdated.removeListener(() {
      viewModel.onGamesUpdated();
    });
    super.onDispose(viewModel);
  }
}
