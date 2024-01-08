import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapi_2024/src/components/game_detail.dart';
import 'package:mockapi_2024/src/providers/game_detail_provder.dart';
import 'package:mockapi_2024/src/providers/game_form_provider.dart';
import 'package:mockapi_2024/src/providers/game_list_provider.dart';
import 'package:mockapi_2024/src/screens/game_form_screen.dart';

class GameDetailScreen extends ConsumerWidget {
  const GameDetailScreen({super.key, required this.gameId});
  final String gameId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(
      gameDetailProvider(gameId),
    );
    return Scaffold(
      appBar: data.when(
        data: (game) {
          return AppBar(
            centerTitle: true,
            title: Text(game!.name ?? 'Not Found'),
            actions: [
              TextButton(
                onPressed: () {
                  ref.read(gameFormProvider.notifier).load(game);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => const GameFormScreen(),
                        fullscreenDialog: true),
                  );
                },
                child: const Text(
                  'Edit',
                ),
              ),
              TextButton(
                onPressed: () async {
                  final result =
                      await ref.read(gameListProvider.notifier).delete(game);
                  result.fold(
                    (error) => print(error),
                    (success) {
                      if (success) {
                        Navigator.pop(context);
                      }
                    },
                  );
                },
                child: const Text(
                  'Delete',
                ),
              )
            ],
          );
        },
        error: (e, _) => AppBar(
          title: const Text('Error'),
        ),
        loading: () {
          return AppBar();
        },
      ),
      body: data.when(
        data: (game) {
          if (game == null) {
            return const Center(child: Text('Game not found'));
          }
          return Center(
            child: GameDetail(
              game: game,
            ),
          );
        },
        error: (err, _) {
          return Center(
            child: Text(err.toString()),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
