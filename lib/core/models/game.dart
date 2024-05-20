// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'game.freezed.dart';
part 'game.g.dart';

@freezed
abstract class GameModel with _$GameModel {
  factory GameModel({
    @JsonKey(name: 'created_at', includeToJson: false) DateTime? createdAt,
    String? name,
    @JsonKey(includeToJson: false) String? photo,
    String? console,
    @JsonKey(name: 'release_year') int? releaseYear,
    @JsonKey(includeToJson: false) String? id,
  }) = _GameModel;

  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
  factory GameModel.empty() {
    return GameModel(
      id: '',
      name: '',
      console: '',
      photo: '',
      releaseYear: 0,
      createdAt: DateTime.now(),
    );
  }
}
