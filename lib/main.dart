import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ux_design_1/binding/controller_binding.dart';
// import 'package:ui_ux_design_1/views/home.dart';
import 'package:ui_ux_design_1/views/splach_screen.dart';

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
      title: 'E-commerce',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(seconds: 2),
      initialBinding: ControllerBinding(),
      home: const SplashView(),
    );
  }
}
