import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ui_ux_design_1/model/all_product_model.dart';

class AllProductRemoteService {
  static const client = http.Client;
  //creating method
  static Future<List<AllProduct>?> fetchProduct() async {
    try {
      var response =
          await http.get(Uri.parse('https://fakestoreapi.com/products'));
      if (response.statusCode == 200) {
        var products = response.body;
        return allProductFromJson(products);
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
    return null;
  }
}
