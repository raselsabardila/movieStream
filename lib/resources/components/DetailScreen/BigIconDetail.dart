import 'package:flutter/material.dart';
import 'package:movieStream/resources/styles/Style.dart';

class BigIconDetail extends StatelessWidget {
  IconData _icon;
  Color _bgColor;
  double _size;

  BigIconDetail(this._icon, this._bgColor, this._size);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: this._bgColor, borderRadius: BorderRadius.circular(100)),
      child: Center(
        child: Icon(
          this._icon,
          size: this._size,
          color: netralWhite,
        ),
      ),
    );
  }
}
