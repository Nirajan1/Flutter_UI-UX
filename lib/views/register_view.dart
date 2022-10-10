import 'package:flutter/material.dart';
import 'package:ui_ux_design_1/widgets/buttons.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool showPassword = true;
  bool showEnteredPassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Register Here'),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            child: Column(
              children: [
                //page title
                const Text(
                  "SIGN UP",
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                ),

                const SizedBox(
                  height: 10.0,
                ),

                //user full name
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Full Name',
                    prefixIcon: Icon(Icons.person_add_alt),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                ),

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
                ),

                const SizedBox(
                  height: 10.0,
                ),

                const MyButton(text: "Register"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
