// import 'package:flutter/material.dart';
// import 'package:mockapi_2024/src/components/game_list_tile.dart';
// import 'package:mockapi_2024/src/screens/game_list/game_list_view_model.dart';
// import 'package:stacked/stacked.dart';

// class GameList extends StackedView<GameListViewModel> {
//   const GameList({super.key});

//   @override
//   Widget builder(
//       BuildContext context, GameListViewModel viewModel, Widget? child) {
//     return viewModel.isBusy
//         ? const Center(
//             child: CircularProgressIndicator(),
//           )
//         : ListView.builder(
//             itemCount: viewModel.games.length,
//             itemBuilder: (BuildContext context, int index) {
//               final game = viewModel.games[index];
//               return GameListTile(game: game);
//             },
//           );
//   }

//   @override
//   GameListViewModel viewModelBuilder(BuildContext context) {
//     return GameListViewModel();
//   }
// }
