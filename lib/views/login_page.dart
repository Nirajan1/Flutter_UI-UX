import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:ui_ux_design_1/util/color_app.dart';
import 'package:ui_ux_design_1/views/forget_password.dart';
import 'package:ui_ux_design_1/views/home.dart';
import 'package:ui_ux_design_1/views/register_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool showPassword = true;
  GlobalKey<FormState> key = GlobalKey<FormState>(); //imp pattern
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Form(
                //important pattern
                key: key,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    //page title
                    const Text(
                      "SIGN IN",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3.0),
                    ),
                    //Image lottie animation
                    Lottie.asset(
                      'images/password.json',
                      width: Get.size.width * 0.50,
                      height: Get.size.height * 0.3,
                      frameRate: FrameRate(30.0),
                    ),
                    //user id
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        decoration: const InputDecoration(
                          labelText: 'User name',
                          prefixIcon: Icon(Icons.person),
                          border: InputBorder.none,
                        ),
                        validator: ((value) =>
                            value!.isEmpty ? 'Email id is required' : null),
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),

                    //password field
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Password*',
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              showPassword = !showPassword;
                              setState(() {});
                            },
                            icon: showPassword == true
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.visibility_outlined),
                          ),
                          border: InputBorder.none,
                        ),
                        obscureText: showPassword,
                        validator: ((value) =>
                            value!.isEmpty ? 'Password is required' : null),
                      ),
                    ),

                    const SizedBox(
                      height: 16.0,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  AppColor.primaryColor,
                                  AppColor.secondaryColor,
                                ],
                              ),
                            ),
                            child: MaterialButton(
                              textColor: Colors.white,
                              onPressed: () {
                                if (key.currentState!.validate()) {
                                  Get.offAll(() => const HomeView());
                                }
                              },
                              child: const Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  letterSpacing: 3.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 15.0,
                    ),
                    //new user registration
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Are you new?'),
                        InkWell(
                          onTap: () {
                            Get.to(() => const RegisterView());
                          },
                          child: const Text(
                            ' Register here',
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),

                    //forget password
                    InkWell(
                      onTap: () {
                        Get.to(() => const ForgetPasswordView());
                      },
                      child: const Text('Forget Password?'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
