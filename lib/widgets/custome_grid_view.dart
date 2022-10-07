import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ux_design_1/controller/all_product_controller.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pController = Get.find<AllProductController>();
    return Obx(
      () {
        if (pController.isLoading.value == true) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else {
          return Container(
            width: Get.size.width,
            height: 411,
            decoration: const BoxDecoration(),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
              ),
              shrinkWrap: true,
              itemCount: pController.product.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 120,
                        decoration: const BoxDecoration(),
                        child: Image.network(
                          pController.product[index].image,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(pController.product[index].title),
                    ],
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
