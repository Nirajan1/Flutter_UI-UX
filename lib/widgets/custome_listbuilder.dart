import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_ux_design_1/controller/product_category_controller.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categoryController = Get.find<CategoriesController>();
    return Obx(
      () {
        if (categoryController.isLoading.value == true) {
          return const Center(
            child: CircularProgressIndicator.adaptive(),
          );
        } else {
          return Container(
            width: Get.size.width,
            height: 185,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categoryController.category.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Card(
                    elevation: 1,
                    child: Container(
                      width: 160,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 160,
                            height: 123,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  //to remove const further
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2022/09/20/19/13/waterfall-7468593__340.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 3,
                                child: SizedBox(
                                  child: Column(
                                    children: [
                                      FittedBox(
                                          child: Text(categoryController
                                              .category[index])),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_vert)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
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
