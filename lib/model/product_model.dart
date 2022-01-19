class ProductModel{

  late String name_product, name_vendior,imag,data;
  late int id,quntity;
  late double price;

  ProductModel({
    required this.id,
    required this.name_product,
    required this.name_vendior,
    required this.imag,
    required this.quntity,
    required this.data,
    required this.price,
  });

  ProductModel.fromJson(Map<String, dynamic> json){
    if(json==null)
      return;
   id=json['id'];
   name_product=json['name_product'];
   name_vendior=json['name_vendior'];
   imag=json['imag'];
   price=json['price'];
   quntity=json['quntity'];
   data=json['data'];

  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name_product'] = this.name_product;
    data['name_vendior'] = this.name_product;
    data['imag'] = this.imag;
    data['price'] = this.price;
    data['quntity'] = this.quntity;
    data['data'] = this.data;
    return data;
  }


}
