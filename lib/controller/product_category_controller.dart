import 'package:get/get.dart';
import 'package:ui_ux_design_1/service/product_category_service.dart';

class CategoriesController extends GetxController {
  var category = [].obs;
  var isLoading = true.obs;
  Future getCategory() async {
    try {
      isLoading(true);
      var data = await ProductCategoryRemoteService.fetchCategory();
      if (data != null) {
        category.value = data;
      }
    } catch (e) {
      Get.snackbar("e", e.toString());
    } finally {
      isLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    getCategory();
  }
}
