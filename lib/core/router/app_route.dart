import 'package:career/core/router/routes_name.dart';
import 'package:career/features/auth/presentation/getx/binding.dart';
import 'package:career/features/auth/presentation/screen/create_new_account_screen.dart';
import 'package:career/features/auth/presentation/screen/log_in_screen.dart';
import 'package:career/features/on%20boarding/presentation/getx/binding/onboarding_binding.dart';
import 'package:career/features/on%20boarding/presentation/screen/on_boarding_screen.dart';
import 'package:career/features/splash/presentation/screen/splash_screen.dart';
import 'package:get/get.dart';
import '../../features/splash/presentation/getx/binding/splash_binding.dart';

class AppRoute {
  static final routes = [
    GetPage(
      name: RoutesName.splash,
      page: () => const SplashScreen(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: RoutesName.onBoarding,
      page: () => const OnBoardingScreen(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: RoutesName.login,
      page: () => const LogInScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: RoutesName.createNewAccount,
      page: () => const CreateNewAccountScreen(),
      binding: AuthBinding(),
    ),
  ];
}
