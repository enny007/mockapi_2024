import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockapi_2024/app/app.locator.dart';
import 'package:mockapi_2024/core/models/game.dart';
import 'package:mockapi_2024/core/services/game_form_service.dart';
import 'package:mockapi_2024/core/services/game_service.dart';
import 'package:stacked/stacked.dart';

class GameFormViewModel extends ReactiveViewModel {
  final _gameFormService = locator<GameFormService>();
  final _gameService = locator<GameService>();

  GlobalKey<FormState> get formKey => _gameFormService.formKey;
  TextEditingController get nameController => _gameFormService.nameController;
  TextEditingController get consoleController =>
      _gameFormService.consoleController;
  TextEditingController get releaseYearController =>
      _gameFormService.releaseYearController;

  GameModel get game => _gameFormService.formModel;

  void updateName() {
    _gameFormService.updateName();
  }

  void updateConsole() {
    _gameFormService.updateConsole();
  }

  void updateReleaseYear(String value) {
    _gameFormService.updateReleaseYear();
  }

  void clear() {
    _gameFormService.clear();
  }

  String? nameValidator(String? value) {
    return _gameFormService.validateName();
  }

  String? consoleValidator(String? value) {
    return _gameFormService.validateConsole();
  }

  String? releaseYearValidator(String? value) {
    return _gameFormService.validateReleaseYear();
  }

  bool validateForm() {
    return _gameFormService.formKey.currentState?.validate() ?? false;
  }

   Future<Either<String, GameModel>> submit() async {
    if (!validateForm()) {
      return left("Form validation failed");
    }

    // final game = _gameFormService.formModel;

    final result = await _gameService.save(game);

    return result.fold(
      (e) => left(e),
      (game) {
        clear();
        notifyListeners();
        return right(game);
      },
    );
  }

  @override
  List<ListenableServiceMixin> get listenableServices => [_gameFormService];
}
