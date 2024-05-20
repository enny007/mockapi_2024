import 'package:flutter/material.dart';
import 'package:mockapi_2024/src/screens/game_form/game_form_view_model.dart';
import 'package:stacked/stacked.dart';

class GameFormScreen extends StackedView<GameFormViewModel> {
  const GameFormScreen({super.key});

  @override
  Widget builder(
      BuildContext context, GameFormViewModel viewModel, Widget? child) {
    return Scaffold(
      appBar: AppBar(title: const Text("New Game")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: viewModel.formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: viewModel.nameController,
                validator: viewModel.nameValidator,
                decoration: const InputDecoration(
                  label: Text("Name"),
                ),
              ),
              TextFormField(
                controller: viewModel.consoleController,
                validator: viewModel.consoleValidator,
                decoration: const InputDecoration(
                  label: Text("Console"),
                ),
              ),
              TextFormField(
                controller: viewModel.releaseYearController,
                validator: viewModel.releaseYearValidator,
                decoration: const InputDecoration(
                  label: Text("Release Year"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () async {
                        final result = await viewModel.submit();
                        result.fold(
                          (e) => ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(e.toString()))),
                          (game) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Game saved successfully')));
                            Navigator.of(context).pop();
                          },
                        );
                      },
                      child: const Text("Save"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  GameFormViewModel viewModelBuilder(BuildContext context) {
    return GameFormViewModel();
  }
}
