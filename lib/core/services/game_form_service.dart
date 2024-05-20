import 'package:flutter/material.dart';
import 'package:mockapi_2024/core/models/game.dart';
import 'package:stacked/stacked.dart';

class GameFormService with ListenableServiceMixin {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late TextEditingController _nameController;
  late TextEditingController _consoleController;
  late TextEditingController _releaseYearController;

  late Function(String?) _nameValidator;
  late Function(String?) _consoleValidator;
  late Function(String?) _releaseYearValidator;

  late GameModel _formModel;
  GameModel get formModel => _formModel;

  GlobalKey<FormState> get formKey => _formKey;
  TextEditingController get nameController => _nameController;
  TextEditingController get consoleController => _consoleController;
  TextEditingController get releaseYearController => _releaseYearController;

  GameFormService({
    String? initialName,
    String? initialConsole,
    int? initialReleaseYear,
    Function(String?)? nameValidator,
    Function(String?)? consoleValidator,
    Function(String?)? releaseYearValidator,
  }) {
    _nameController = TextEditingController(text: initialName ?? '');
    _consoleController = TextEditingController(text: initialConsole ?? '');
    _releaseYearController = TextEditingController(
        text: initialReleaseYear != null ? initialReleaseYear.toString() : '');

    _formModel = GameModel(
      name: initialName,
      console: initialConsole,
      releaseYear: initialReleaseYear,
    );

    _nameValidator = nameValidator ?? (value) => null;
    _consoleValidator = consoleValidator ?? (value) => null;
    _releaseYearValidator = releaseYearValidator ?? (value) => null;

    _nameController.addListener(updateName);
    _consoleController.addListener(updateConsole);
    _releaseYearController.addListener(updateReleaseYear);
  }

  void updateName() {
    _formModel = _formModel.copyWith(name: _nameController.text);
    notifyListeners();
  }

  void updateConsole() {
    _formModel = _formModel.copyWith(console: _consoleController.text);
    notifyListeners();
  }

  void updateReleaseYear() {
    final intValue = int.tryParse(_releaseYearController.text);
    _formModel = _formModel.copyWith(releaseYear: intValue);
    notifyListeners();
  }

  String? validateName() => _nameValidator(_formModel.name);
  String? validateConsole() => _consoleValidator(_formModel.console);
  String? validateReleaseYear() => _releaseYearValidator(
      _formModel.releaseYear != null ? _formModel.releaseYear.toString() : '');

  void loadEntry(GameModel entry) {
    _nameController.text = entry.name ?? '';
    _consoleController.text = entry.console ?? '';
    _releaseYearController.text = entry.releaseYear?.toString() ?? '';
    _formModel = entry;
    notifyListeners();
  }

  void clear() {
    _nameController.clear();
    _consoleController.clear();
    _releaseYearController.clear();
    _formModel = GameModel();
    notifyListeners();
  }

  void dispose() {
    _nameController.dispose();
    _consoleController.dispose();
    _releaseYearController.dispose();
  }
}
