import 'package:flutter/material.dart';
import 'castom_widget/body.dart';
import 'castom_widget/fillter.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar:Filltter(),
    );
  }
}








