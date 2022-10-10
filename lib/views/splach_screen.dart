import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_ux_design_1/util/color_app.dart';
import 'package:ui_ux_design_1/views/login_page.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void splashload() {
    //creating method
    Future.delayed(const Duration(seconds: 4), () {
      Get.off(() => const LoginView());
    });
  }

  @override
  //created
  void initState() {
    super.initState();
    splashload();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColor.primaryColor,
                AppColor.secondaryColor,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //image
              Lottie.asset(
                'images/grocery.json',
                width: Get.size.width * 0.50,
                height: Get.size.height * 0.3,
              ),
              const Text(
                "A whole grocery store\n at your fingertips",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
              const CircularProgressIndicator(
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
