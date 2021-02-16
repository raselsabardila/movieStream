import 'package:flutter/material.dart';
import 'package:movieStream/resources/styles/Style.dart';

class TitleSection extends StatelessWidget {
  String _text;

  TitleSection(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: Text(
        this._text,
        style: titleSection,
      ),
    );
  }
}
