import 'package:flutter/material.dart';
import 'package:mockapi_2024/core/models/game.dart';
import 'package:mockapi_2024/src/screens/game_list/game_list_view_model.dart';
import 'package:stacked/stacked.dart';

class GameListTile extends ViewModelWidget<GameListViewModel> {
  final GameModel game;

  const GameListTile({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context, GameListViewModel viewModel) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 15,
      ),
      child: ListTile(
        title: Text(game.name ?? ''),
        subtitle: Text(game.console ?? ''),
        leading: Image.network(
          game.photo ?? '',
          width: 48,
          height: 48,
          fit: BoxFit.cover,
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {
          viewModel.navigateToDetailScreen(game.id ?? '');
        },
      ),
    );
  }
}
