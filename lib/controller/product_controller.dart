import 'package:get/get.dart';
import 'package:product_info/model/product_model.dart';
import 'package:product_info/serves/data_suorce.dart';


class ProductController extends GetxController with StateMixin<List<ProductModel>>{

  late List<ProductModel>products;



  @override
  void onInit() {
    products = List<ProductModel>.empty(growable: true);
    setProducts();

  }

  setProducts(){
    products = List<ProductModel>.empty(growable: true);
    products=DataSource.datasorsGet;
    change(products,status:RxStatus.success());
  }
}


