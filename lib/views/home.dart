import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ux_design_1/widgets/custome_listbuilder.dart';
import 'package:ui_ux_design_1/widgets/custome_listtile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const List _post = [
    "Men's Clothing",
    "Jewelary",
    "Women's Colothing",
    "Winter Clothing",
    "Kitchen Equipment"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Ecommerce"),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const MyListTile(title: 'Category'),
              //listView.buider
              Container(
                width: Get.size.width,
                height: 150,
                decoration: const BoxDecoration(),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _post.length,
                  itemBuilder: (context, index) {
                    return MyListViewBuilder(
                      title: _post[index],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
