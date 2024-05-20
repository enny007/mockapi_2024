import 'package:flutter/material.dart';
import 'package:mockapi_2024/app/app.router.dart';
import 'package:mockapi_2024/app/application.dart';
import 'package:mockapi_2024/src/screens/game_list/game_list_screen.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  await Application.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
      home: const GameListScreen(),
    );
  }
}
