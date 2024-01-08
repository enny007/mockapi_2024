import 'package:flutter/material.dart';
import 'package:mockapi_2024/src/models/game.dart';
import 'package:mockapi_2024/src/screens/game_detail_screen.dart';

class GameListTile extends StatelessWidget {
  final GameModel game;

  const GameListTile({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
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
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => GameDetailScreen(gameId: game.id ?? ''),
            ),
          );
        },
      ),
    );
  }
}
