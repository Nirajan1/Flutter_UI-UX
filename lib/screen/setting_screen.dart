import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ux_design_1/views/login_page.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search for Settings...',
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ListTile(
                onTap: () {},
                title: const Text("Account"),
                leading: const Icon(Icons.person_outline),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              const Divider(height: 1),
              ListTile(
                onTap: () {},
                title: const Text("Notifications"),
                leading: const Icon(Icons.notifications_none_outlined),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              const Divider(height: 1),
              ListTile(
                onTap: () {},
                title: const Text("Appearance"),
                leading: const Icon(Icons.remove_red_eye_outlined),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              const Divider(height: 1),
              ListTile(
                onTap: () {},
                title: const Text("Privacy & Security"),
                leading: const Icon(Icons.lock_outlined),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              const Divider(height: 1),
              ListTile(
                onTap: () {},
                title: const Text("Help and Support"),
                leading: const Icon(Icons.headset_outlined),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              const Divider(height: 1),
              ListTile(
                onTap: () {},
                title: const Text("About"),
                leading: const Icon(Icons.question_mark_rounded),
                trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              ),
              const Divider(height: 1),
              ListTile(
                onTap: () {
                  Get.offAll(const LoginView());
                },
                title: Text(
                  "Logout",
                  style: TextStyle(color: Colors.red[200]),
                ),
                leading: Icon(
                  Icons.logout_rounded,
                  color: Colors.red[200],
                ),
              ),
              const Divider(height: 1),
            ],
          ),
        ),
      ),
    );
  }
}
