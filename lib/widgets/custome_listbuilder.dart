import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  final String title;
  final String image;
  const MyListViewBuilder({
    Key? key,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
          width: 150,
          height: 190,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Column(
            children: [
              Container(
                width: 150,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 5,
                    child: SizedBox(
                      child: Column(
                        children: [
                          FittedBox(child: Text(title)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: IconButton(
                        onPressed: () {}, icon: const Icon(Icons.more_vert)),
                  )
                ],
              )
            ],
          )),
    );
  }
}
