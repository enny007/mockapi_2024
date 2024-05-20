import 'package:mockapi_2024/app/app.locator.dart';

class Application {
  static Future<void> initialize() async {
    // await Firebase.initializeApp();
    setupLocator();
  }
}