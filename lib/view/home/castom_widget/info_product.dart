import 'package:flutter/material.dart';
import 'package:product_info/castom_widget/cricle_continer.dart';
import 'package:product_info/model/product_model.dart';

class InfioProduct extends StatelessWidget {
  InfioProduct({Key? key, required this.product}) : super(key: key);
  ProductModel product;

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
            product.name_vendior,
            style: TextStyle(color: Colors.black, fontSize: 16),
            maxLines: 2,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                product.name_product,
                style: TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2,
              ),
              SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                    text: "\n السعر= \$${product.price}",
                    style: TextStyle(fontWeight: FontWeight.w600),
                    children: [
                      TextSpan(
                        text: "\n الكمية=${product.quntity}",
                        style:TextStyle(color: product.quntity > 5 ? Colors.green : Colors.red ),
                      )
                    ]),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "${product.data}",
            style: TextStyle(color: Colors.black, fontSize: 16),
            maxLines: 2,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 13,
          ),
          CricleContiner(
            color: product.quntity > 5 ? Colors.green : Colors.red,
          ),
        ],
      ),
    );
  }
}
