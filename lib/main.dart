import 'package:career/core/router/app_route.dart';
import 'package:career/core/router/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/theme/theme_manger.dart';
import 'features/splash/presentation/getx/binding/splash_binding.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(context),
      initialRoute: RoutesName.splash,
      initialBinding: SplashBinding(),
      getPages: AppRoute.routes,

    );
  }
}


