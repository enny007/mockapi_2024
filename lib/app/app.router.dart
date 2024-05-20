// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedNavigatorGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i5;
import 'package:flutter/material.dart';
import 'package:mockapi_2024/src/screens/game_detail/game_detail_screen.dart'
    as _i4;
import 'package:mockapi_2024/src/screens/game_form/game_form_screen.dart'
    as _i3;
import 'package:mockapi_2024/src/screens/game_list/game_list_screen.dart'
    as _i2;
import 'package:stacked/stacked.dart' as _i1;
import 'package:stacked_services/stacked_services.dart' as _i6;

class Routes {
  static const gameListScreen = '/';

  static const gameFormScreen = '/game-form-screen';

  static const gameDetailScreen = '/game-detail-screen';

  static const all = <String>{
    gameListScreen,
    gameFormScreen,
    gameDetailScreen,
  };
}

class StackedRouter extends _i1.RouterBase {
  final _routes = <_i1.RouteDef>[
    _i1.RouteDef(
      Routes.gameListScreen,
      page: _i2.GameListScreen,
    ),
    _i1.RouteDef(
      Routes.gameFormScreen,
      page: _i3.GameFormScreen,
    ),
    _i1.RouteDef(
      Routes.gameDetailScreen,
      page: _i4.GameDetailScreen,
    ),
  ];

  final _pagesMap = <Type, _i1.StackedRouteFactory>{
    _i2.GameListScreen: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i2.GameListScreen(),
        settings: data,
      );
    },
    _i3.GameFormScreen: (data) {
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) => const _i3.GameFormScreen(),
        settings: data,
      );
    },
    _i4.GameDetailScreen: (data) {
      final args = data.getArgs<GameDetailScreenArguments>(nullOk: false);
      return _i1.buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            _i4.GameDetailScreen(key: args.key, gameId: args.gameId),
        settings: data,
      );
    },
  };

  @override
  List<_i1.RouteDef> get routes => _routes;

  @override
  Map<Type, _i1.StackedRouteFactory> get pagesMap => _pagesMap;
}

class GameDetailScreenArguments {
  const GameDetailScreenArguments({
    this.key,
    required this.gameId,
  });

  final _i5.Key? key;

  final String gameId;

  @override
  String toString() {
    return '{"key": "$key", "gameId": "$gameId"}';
  }

  @override
  bool operator ==(covariant GameDetailScreenArguments other) {
    if (identical(this, other)) return true;
    return other.key == key && other.gameId == gameId;
  }

  @override
  int get hashCode {
    return key.hashCode ^ gameId.hashCode;
  }
}

extension NavigatorStateExtension on _i6.NavigationService {
  Future<dynamic> navigateToGameListScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.gameListScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGameFormScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return navigateTo<dynamic>(Routes.gameFormScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> navigateToGameDetailScreen({
    _i5.Key? key,
    required String gameId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return navigateTo<dynamic>(Routes.gameDetailScreen,
        arguments: GameDetailScreenArguments(key: key, gameId: gameId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGameListScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.gameListScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGameFormScreen([
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  ]) async {
    return replaceWith<dynamic>(Routes.gameFormScreen,
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }

  Future<dynamic> replaceWithGameDetailScreen({
    _i5.Key? key,
    required String gameId,
    int? routerId,
    bool preventDuplicates = true,
    Map<String, String>? parameters,
    Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)?
        transition,
  }) async {
    return replaceWith<dynamic>(Routes.gameDetailScreen,
        arguments: GameDetailScreenArguments(key: key, gameId: gameId),
        id: routerId,
        preventDuplicates: preventDuplicates,
        parameters: parameters,
        transition: transition);
  }
}
