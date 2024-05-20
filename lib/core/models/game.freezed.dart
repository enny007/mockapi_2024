// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameModel _$GameModelFromJson(Map<String, dynamic> json) {
  return _GameModel.fromJson(json);
}

/// @nodoc
mixin _$GameModel {
  @JsonKey(name: 'created_at', includeToJson: false)
  DateTime? get createdAt => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String? get photo => throw _privateConstructorUsedError;
  String? get console => throw _privateConstructorUsedError;
  @JsonKey(name: 'release_year')
  int? get releaseYear => throw _privateConstructorUsedError;
  @JsonKey(includeToJson: false)
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameModelCopyWith<GameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameModelCopyWith<$Res> {
  factory $GameModelCopyWith(GameModel value, $Res Function(GameModel) then) =
      _$GameModelCopyWithImpl<$Res, GameModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at', includeToJson: false) DateTime? createdAt,
      String? name,
      @JsonKey(includeToJson: false) String? photo,
      String? console,
      @JsonKey(name: 'release_year') int? releaseYear,
      @JsonKey(includeToJson: false) String? id});
}

/// @nodoc
class _$GameModelCopyWithImpl<$Res, $Val extends GameModel>
    implements $GameModelCopyWith<$Res> {
  _$GameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? console = freezed,
    Object? releaseYear = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      console: freezed == console
          ? _value.console
          : console // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseYear: freezed == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameModelImplCopyWith<$Res>
    implements $GameModelCopyWith<$Res> {
  factory _$$GameModelImplCopyWith(
          _$GameModelImpl value, $Res Function(_$GameModelImpl) then) =
      __$$GameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at', includeToJson: false) DateTime? createdAt,
      String? name,
      @JsonKey(includeToJson: false) String? photo,
      String? console,
      @JsonKey(name: 'release_year') int? releaseYear,
      @JsonKey(includeToJson: false) String? id});
}

/// @nodoc
class __$$GameModelImplCopyWithImpl<$Res>
    extends _$GameModelCopyWithImpl<$Res, _$GameModelImpl>
    implements _$$GameModelImplCopyWith<$Res> {
  __$$GameModelImplCopyWithImpl(
      _$GameModelImpl _value, $Res Function(_$GameModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? console = freezed,
    Object? releaseYear = freezed,
    Object? id = freezed,
  }) {
    return _then(_$GameModelImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      console: freezed == console
          ? _value.console
          : console // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseYear: freezed == releaseYear
          ? _value.releaseYear
          : releaseYear // ignore: cast_nullable_to_non_nullable
              as int?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameModelImpl implements _GameModel {
  _$GameModelImpl(
      {@JsonKey(name: 'created_at', includeToJson: false) this.createdAt,
      this.name,
      @JsonKey(includeToJson: false) this.photo,
      this.console,
      @JsonKey(name: 'release_year') this.releaseYear,
      @JsonKey(includeToJson: false) this.id});

  factory _$GameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameModelImplFromJson(json);

  @override
  @JsonKey(name: 'created_at', includeToJson: false)
  final DateTime? createdAt;
  @override
  final String? name;
  @override
  @JsonKey(includeToJson: false)
  final String? photo;
  @override
  final String? console;
  @override
  @JsonKey(name: 'release_year')
  final int? releaseYear;
  @override
  @JsonKey(includeToJson: false)
  final String? id;

  @override
  String toString() {
    return 'GameModel(createdAt: $createdAt, name: $name, photo: $photo, console: $console, releaseYear: $releaseYear, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameModelImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.console, console) || other.console == console) &&
            (identical(other.releaseYear, releaseYear) ||
                other.releaseYear == releaseYear) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, createdAt, name, photo, console, releaseYear, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      __$$GameModelImplCopyWithImpl<_$GameModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameModelImplToJson(
      this,
    );
  }
}

abstract class _GameModel implements GameModel {
  factory _GameModel(
      {@JsonKey(name: 'created_at', includeToJson: false)
      final DateTime? createdAt,
      final String? name,
      @JsonKey(includeToJson: false) final String? photo,
      final String? console,
      @JsonKey(name: 'release_year') final int? releaseYear,
      @JsonKey(includeToJson: false) final String? id}) = _$GameModelImpl;

  factory _GameModel.fromJson(Map<String, dynamic> json) =
      _$GameModelImpl.fromJson;

  @override
  @JsonKey(name: 'created_at', includeToJson: false)
  DateTime? get createdAt;
  @override
  String? get name;
  @override
  @JsonKey(includeToJson: false)
  String? get photo;
  @override
  String? get console;
  @override
  @JsonKey(name: 'release_year')
  int? get releaseYear;
  @override
  @JsonKey(includeToJson: false)
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$GameModelImplCopyWith<_$GameModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
