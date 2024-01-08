import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapi_2024/src/components/game_form.dart';

class GameFormScreen extends ConsumerWidget {
  const GameFormScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text("New Game")),
      body: const Padding(
        padding: EdgeInsets.all(8.0),
        child: GameForm(),
      ),
    );
  }
}
