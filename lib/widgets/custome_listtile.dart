import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String title;
  const MyListTile({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: const Text(
          "View more",
          style: TextStyle(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
