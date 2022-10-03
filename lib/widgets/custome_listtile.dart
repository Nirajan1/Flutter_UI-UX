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
        title: Text(title),
        trailing: TextButton(onPressed: () {}, child: const Text("View more")));
  }
}
