import 'package:coolbuy/models/product.dart';
import 'package:get/state_manager.dart';

class ShoppingController extends GetxController {
  var products = List<Product>().obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(
      Duration(seconds: 1),
    );
    var productResults = [
      Product(
          id: 1,
          price: 30,
          productDesc: 'some description about product',
          productImage: 'abd',
          productName: 'FirstProd'),
      Product(
          id: 2,
          price: 40,
          productDesc: 'some description about product',
          productImage: 'abd',
          productName: 'SecProd'),
      Product(
          id: 3,
          price: 49.5,
          productDesc: 'some description about product',
          productImage: 'abd',
          productName: 'ThirdProd'),
    ];

    products.assignAll(productResults);
  }
}
