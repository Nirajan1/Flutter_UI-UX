import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ux_design_1/util/color_app.dart';
import 'package:ui_ux_design_1/views/login_page.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool showPassword = true;
  bool showEnteredPassword = true;
  GlobalKey<FormState> key = GlobalKey<FormState>(); //imp pattern

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Form(
              key: key,
              child: Column(
                children: [
                  //page title
                  const Padding(
                    padding: EdgeInsets.all(40.0),
                    child: Text(
                      "SIGN UP",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                  ),

                  //user full name

                  const SizedBox(
                    height: 10.0,
                  ),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'user name',
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    validator: ((value) =>
                        value!.isEmpty ? 'User name is required' : null),
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email Address',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    validator: ((value) =>
                        value!.isEmpty ? 'Email Address is required' : null),
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                      prefixIcon: Icon(Icons.phone_android),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    validator: ((value) =>
                        value!.isEmpty ? 'Phone Number is required' : null),
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          showPassword = !showPassword;
                          setState(() {});
                        },
                        icon: showPassword == true
                            ? const Icon(Icons.visibility_off_rounded)
                            : const Icon(Icons.visibility_rounded),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    obscureText: showPassword,
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Enter previous password',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        onPressed: () {
                          showEnteredPassword = !showEnteredPassword;
                          setState(() {});
                        },
                        icon: showEnteredPassword == true
                            ? const Icon(Icons.visibility_off_rounded)
                            : const Icon(Icons.visibility_rounded),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    obscureText: showEnteredPassword,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),

                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Permanent Address',
                      prefixIcon: Icon(Icons.location_city),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                    ),
                    validator: ((value) =>
                        value!.isEmpty ? 'Permanent Addres is required' : null),
                  ),

                  const SizedBox(
                    height: 10.0,
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
                                Get.offAll(() => const LoginView());
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
