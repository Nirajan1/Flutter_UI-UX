import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ux_design_1/controller/product_category_controller.dart';
import 'package:ui_ux_design_1/widgets/custome_listbuilder.dart';
import 'package:ui_ux_design_1/widgets/custome_listtile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var categoryController = Get.find<CategoriesController>();
    return Obx(
      () {
        if (categoryController.isLoading.value == true) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return SingleChildScrollView(
            child: Column(
              children: [
                const MyListTile(title: 'Category'),
                //listView.buider
                Container(
                  width: Get.size.width,
                  height: 200,
                  decoration: const BoxDecoration(),
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryController.category.length,
                    itemBuilder: (context, index) {
                      return MyListViewBuilder(
                        image:
                            'https://cdn.pixabay.com/photo/2018/07/29/21/13/heat-3571028__340.jpg',
                        title: categoryController.category[index],
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                )
              ],
            ),
          );
        }
      },
    );
  }
}
