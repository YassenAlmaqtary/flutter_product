import 'package:flutter/material.dart';
import 'package:product_info/controller/ching_list.dart';
import 'package:product_info/controller/product_controller.dart';
import 'package:get/get.dart';
import 'gruob_list.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final _controller = Get.put(ProductController());
  final ching = Get.find<ChingListCountroller>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        children: [
          Wrap(
            children: List.generate(
              _controller.products.length,
              (index) => _controller.obx(
                (data) => SizedBox(
                  child: Obx(
                    () => GruobList(
                        product: _controller.products[index],
                        current: ching.currentIndex.value),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
