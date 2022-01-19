
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class VisbleController extends GetxController{

  late ValueNotifier<bool> load ;

  @override
  void onInit() {
    load = ValueNotifier(false);
    super.onInit();
  }

  chingVisbal(){
    load.value=!load.value;
    update();
  }
}