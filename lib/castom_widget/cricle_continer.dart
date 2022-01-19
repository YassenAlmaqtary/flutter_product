import 'package:flutter/material.dart';

class CricleContiner extends StatelessWidget {
final  Color color;
  const CricleContiner({Key? key,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 16,
      height:16,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: this.color,
        border: Border.all(width: 1.5, color: Colors.white),
      ),
    );
  }
}
