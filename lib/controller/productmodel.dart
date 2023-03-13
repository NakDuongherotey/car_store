import 'package:get/get.dart';

import '../Icon.dart';

abstract class templateProduct{
  void insert(ProductModel productModel);
  void display(ProductModel productModel);
  void delete(ProductModel productModel);
  void updatePro(ProductModel productModel);
}

class ProductControler extends GetxController implements templateProduct
{List<ProductModel> products = <ProductModel>[].obs;
  @override 
  void insert(ProductModel productModel) {
    // TODO: implement instert
    print(productModel.name);
    products.add(productModel);
    update();
  }
  @override 
  void display(ProductModel productModel) {
    // TODO: implement display
    throw UnimplementedError();
  }
  @override 
  void delete(ProductModel productModel) {
    // TODO: implement delete
    products.removeWhere((element) => element.id == productModel.id);
    update();

  }
  @override 
  void updatePro(ProductModel productModel) {
    // TODO: implement updatePro
    throw UnimplementedError();
  }
}