import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  String text;
  Color color;

  AppText({Key? key, this.size = 20, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: size),
      ),
    );
  }
}
