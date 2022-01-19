import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product_info/view/home/home_screen.dart';

import 'controller/ching_list.dart';

void main() {
  Get.put(ChingListCountroller());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: Locale('ar', 'US'),
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: HomeScreen(),
    );
  }
}


