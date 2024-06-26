import 'package:flutter/material.dart';
import 'package:mockapi_2024/core/models/game.dart';

class GameDetail extends StatelessWidget {
  final GameModel game;
  const GameDetail({
    super.key,
    required this.game,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
            game.photo ?? '',
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Text(
            game.name ?? '',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            game.console ?? '',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            "Released ${game.releaseYear}",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ],
      ),
    );
  }
}