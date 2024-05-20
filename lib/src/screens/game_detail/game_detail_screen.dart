import 'package:flutter/material.dart';
import 'package:mockapi_2024/src/components/game_detail.dart';
import 'package:mockapi_2024/src/screens/game_detail/game_detail_view_model.dart';
import 'package:stacked/stacked.dart';

class GameDetailScreen extends StackedView<GameDetailViewModel> {
  const GameDetailScreen({super.key, required this.gameId});
  final String gameId;

  @override
  Widget builder(
      BuildContext context, GameDetailViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: viewModel.game.name != null
            ? Text(viewModel.game.name!)
            : const Text('Not Found'),
        actions: [
          TextButton(
            onPressed: () {
              viewModel.loadEntries();
            },
            child: const Text('Edit'),
          ),
          TextButton(
            onPressed: () {
              viewModel.deleteGame(viewModel.game);
            },
            child: const Text('Delete'),
          )
        ],
      ),
      body: viewModel.isBusy
          ? const Center(child: CircularProgressIndicator())
          : viewModel.hasError
              ? const Center(child: Text('Error Occured'))
              : Center(child: GameDetail(game: viewModel.game)),
    );
  }

  @override
  GameDetailViewModel viewModelBuilder(BuildContext context) {
    return GameDetailViewModel(gameId: gameId);
  }

  @override
  void onViewModelReady(GameDetailViewModel viewModel) {
    viewModel.getGameDetail(gameId);
    super.onViewModelReady(viewModel);
  }
}
