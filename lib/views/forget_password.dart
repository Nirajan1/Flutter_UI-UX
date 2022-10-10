import 'package:flutter/material.dart';
import 'package:ui_ux_design_1/widgets/buttons.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Recover password'),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20.0,
                right: 20.0,
              ),
              child: Column(
                children: [
                  //notice
                  const ListTile(
                    subtitle:
                        Text("Enter the email address linked to this account"),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email Id',
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const MyButton(
                    text: "Reset Password",
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
