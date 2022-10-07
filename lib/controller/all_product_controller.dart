import 'package:get/get.dart';
import 'package:ui_ux_design_1/service/all_product_service.dart';

class AllProductController extends GetxController {
  var product = [].obs;
  var isLoading = true.obs;
  Future getProduct() async {
    try {
      isLoading(true);
      var data = await AllProductRemoteService.fetchProduct();
      if (data != null) {
        product.value = data;
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
    getProduct();
  }
}
