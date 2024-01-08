import 'package:flutter/material.dart';
import 'package:mockapi_2024/src/components/game_list.dart';
import 'package:mockapi_2024/src/screens/game_form_screen.dart';

class GameListScreen extends StatelessWidget {
  const GameListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Games'),
        centerTitle: true,
      ),
      body: const GameList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => const GameFormScreen(),
              fullscreenDialog: true,
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
