import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  final String title;
  const MyListViewBuilder({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
          width: 150,
          height: 180,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                width: 150,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.network(
                    'https://cdn.pixabay.com/photo/2022/09/21/02/28/hummingbird-7469232__340.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        children: [
                          FittedBox(child: Text(title)),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: const Icon(Icons.more_vert))
                ],
              )
            ],
          )),
    );
  }
}
