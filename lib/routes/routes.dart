import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:task/image_screen/binding/image_binding.dart';
import 'package:task/image_screen/image_screen.dart';
import 'package:task/splash_screen/binding/splash_screen_binding.dart';
import 'package:task/splash_screen/splash_screen.dart';

class AppRoutes {
  static const String splashScreen = "/splashScreen";

  static const String imageScreen = "/imageScreen";
  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => const SplashScreen(),
      bindings: [
        SplashScreenBinding(),
      ],
    ),
    GetPage(
      name: imageScreen,
      page: () => const ImageScreen(),
      bindings: [
        ImageBinding(),
      ],
    ),
  ];
}
