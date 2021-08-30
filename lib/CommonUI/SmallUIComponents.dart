

import 'package:flutter/material.dart';

class CUText extends StatelessWidget {
  String text;
  TextAlign align;
  double size;
  bool bold;
  Color colors;
  int maxline;
  double space;
  CUText(this.text,this.align, this.size, this.bold,
      [this.colors = Colors.black, this.maxline = 1, this.space = 0.5]);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      textAlign: align,
      overflow: TextOverflow.ellipsis,
      maxLines: maxline,
      style: TextStyle(
        letterSpacing: space,
        fontWeight: bold ? FontWeight.bold : FontWeight.normal,
        color: colors,
        fontSize: size,
      ),);
  }
}

class CUIcon extends StatelessWidget {
  IconData icon;
  double size;
  Color colors;

  CUIcon(this.icon, this.colors, [this.size = 24]);
  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: size,
      color: colors,
    );
  }
}
