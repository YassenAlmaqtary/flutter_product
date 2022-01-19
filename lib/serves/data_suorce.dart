import 'package:product_info/model/product_model.dart';

class DataSource {
  static List<ProductModel> sorus = [
    ProductModel(
      id: 1,
      name_product: "kitkat",
      name_vendior: "محمد",
      imag: "kitkat.jpg",
      quntity: 3,
      data: '2/12/2022',
      price: 20.0,
    ),
    ProductModel(
      id: 1,
      name_product: "nutella",
      name_vendior: "سعيد",
      imag: "nutella.jpg",
      quntity: 4,
      data: '20/12/2022',
      price: 200.0,
    ),
    ProductModel(
      id: 1,
      name_product: "pepce",
      name_vendior: "خالد",
      imag: "pepce.jpg",
      quntity: 200,
      data: '6/12/2022',
      price: 20.8,
    ),

  ];
   static get datasorsGet =>sorus;
}
