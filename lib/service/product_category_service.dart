import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:ui_ux_design_1/model/product_category_model.dart';

class ProductCategoryRemoteService {
  static const client = http.Client;
//Method creation
  static Future<List<String>?> fetchCategory() async {
    try {
      var response = await http.get(
        Uri.parse('https://fakestoreapi.com/products/categories'),
      );
      if (response.statusCode == 200) {
        var category = response.body;
        return productCategoryFromJson(category);
      }
    } catch (error) {
      Get.snackbar("error", error.toString());
    }
    return null;
  }
}
