import 'package:get/get.dart';
import 'package:ui_ux_design_1/controller/all_product_controller.dart';
import 'package:ui_ux_design_1/controller/product_category_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CategoriesController());
    Get.put(AllProductController());
  }
}
