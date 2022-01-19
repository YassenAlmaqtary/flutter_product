import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_info/controller/ching_list.dart';
import 'package:product_info/controller/visble_controller.dart';

class Filltter extends StatelessWidget {
  Filltter({Key? key}) : super(key: key);
  final _controlle=Get.find<ChingListCountroller>();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal:20,
        vertical:15,
      ),
      width:30,
      height:170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow:[
          BoxShadow(
            offset:Offset(0,-15),
            blurRadius:20,
            color:Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),

      child: SafeArea(

        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            GetBuilder<VisbleController>(
              init:VisbleController(),
              builder:(controller)=> MaterialButton(
                onPressed: () {
                  controller.chingVisbal();
                },
                color: Colors.blue,
                textColor: Colors.white,
                child: Icon(
                  Icons.add_box_outlined,
                  size: 24,
                ),
                padding: EdgeInsets.all(16),
                shape: CircleBorder(),
              ),
            ),
            SizedBox(height:20,),

            GetBuilder<VisbleController>(
              builder:(controller)=> Visibility(
                visible:controller.load.value,
                child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        _controlle.chingCurent(0);
                      },
                      color: Colors.deepPurple,
                      textColor: Colors.white,
                      child:Text("الكل",),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    ),
                    MaterialButton(
                      onPressed: () {
                        _controlle.chingCurent(1);
                      },
                      color: Colors.red,
                      textColor: Colors.white,
                      child:Text("الاسم"),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    ),
                    MaterialButton(
                      onPressed: () {
                        _controlle.chingCurent(2);
                      },
                      color: Colors.green,
                      textColor: Colors.white,
                      child:Text(" التاجر"),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    ),
                    MaterialButton(
                      onPressed: () {
                        _controlle.chingCurent(3);
                      },
                      color: Colors.deepOrange,
                      textColor: Colors.white,
                      child:Text("التاريخ",),
                      padding: EdgeInsets.all(16),
                      shape: CircleBorder(),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

