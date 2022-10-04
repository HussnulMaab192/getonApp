import 'package:brum_brum_ride_electric/screens/on_boarding/on_boarding.dart';
import 'package:brum_brum_ride_electric/screens/splash/splash.dart';
import 'package:brum_brum_ride_electric/screens/user_verfication/user_verification.dart';
import 'package:get/get.dart';

class AppRoutes {
// ROUTE NAMES
  static String initial = "/";
  static String onBoarding = "/on-boarding";
  static String userVerification = "/userVerification";

// ROUTE - FUNCTIONS
  static String getSplash() => initial;

  static List<GetPage> routes = [
    GetPage(
      name: "/",
      page: () => const SplashScreen(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: onBoarding,
      page: () => const OnBoarding(),
      transition: Transition.leftToRightWithFade,
    ),
    GetPage(
      name: userVerification,
      page: () => const UserVerification(),
      transition: Transition.leftToRightWithFade,
    ),
  ];
}
