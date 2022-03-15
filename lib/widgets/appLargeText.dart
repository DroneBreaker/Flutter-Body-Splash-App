import 'package:flutter/material.dart';

class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  Color? color;

  AppLargeText(
      {Key? key, this.size = 30, required this.text, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic),
      ),
    );
  }
}
