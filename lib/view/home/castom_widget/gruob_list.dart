

import 'package:flutter/material.dart';
import 'package:product_info/model/product_model.dart';

import 'info_product.dart';
import 'list_filtter.dart';

class GruobList extends StatelessWidget {
    ProductModel product;
    int current;
    GruobList({Key? key,required this.product,required this.current}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    List<Widget> getviews=[
      InfioProduct(product:this.product),
      ListFiltter(product:this.product,filtter:product.name_vendior,),
      ListFiltter(product:this.product,filtter:product.name_product,),
      ListFiltter(product:this.product,filtter:product.data,),
    ];
    return getviews[this.current];
  }
}



