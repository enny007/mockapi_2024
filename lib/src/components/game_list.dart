import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapi_2024/src/components/game_list_tile.dart';
import 'package:mockapi_2024/src/providers/game_list_provider.dart';

class GameList extends ConsumerWidget {
  const GameList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final games = ref.watch(gameListProvider);
    return ListView.builder(
      itemCount: games.length,
      itemBuilder: (BuildContext context, int index) {
        final game = games[index];
        return GameListTile(game: game);
      },
    );
  }
}
