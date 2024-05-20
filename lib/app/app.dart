import 'package:mockapi_2024/src/screens/game_detail/game_detail_screen.dart';
import 'package:mockapi_2024/src/screens/game_form/game_form_screen.dart';
import 'package:mockapi_2024/src/screens/game_list/game_list_screen.dart';
import 'package:mockapi_2024/core/services/game_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../core/services/game_form_service.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: GameListScreen, initial: true),
    AdaptiveRoute(page: GameFormScreen),
    AdaptiveRoute(page: GameDetailScreen,),
    // AdaptiveRoute(page: GameDetailScreen(gameId: gameId)),
  ],
  // bottomsheets: [],
  // dialogs: [

  // ],
  dependencies: [
    Singleton(classType: NavigationService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: SnackbarService),
    LazySingleton(classType: GameService),
    LazySingleton(classType: GameFormService),
  ],
)
class AppSetup {}
