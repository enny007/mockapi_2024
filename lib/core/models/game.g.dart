// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameModelImpl _$$GameModelImplFromJson(Map<String, dynamic> json) =>
    _$GameModelImpl(
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      name: json['name'] as String?,
      photo: json['photo'] as String?,
      console: json['console'] as String?,
      releaseYear: json['release_year'] as int?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$GameModelImplToJson(_$GameModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'console': instance.console,
      'release_year': instance.releaseYear,
    };
