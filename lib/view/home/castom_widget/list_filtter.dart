import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:product_info/castom_widget/cricle_continer.dart';
import 'package:product_info/model/product_model.dart';

class ListFiltter extends StatelessWidget {
  ListFiltter({Key? key, required this.product,required this.filtter}) : super(key: key);
  ProductModel product;
   String filtter;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 3,
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: .88,
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  "assets/images/${product.imag}",
                  width:200,
                  height:200,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Text(
            this.filtter,
            style: TextStyle(color: Colors.black, fontSize: 16),
            maxLines: 2,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 13,
          ),

        ],
      ),
    );
  }
}

