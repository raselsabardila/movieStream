import 'package:flutter/material.dart';
import 'package:movieStream/resources/styles/Style.dart';

class StarIcon extends StatelessWidget {
  bool _active;

  StarIcon(this._active);

  @override
  Widget build(BuildContext context) {
    return Icon(
        Icons.star,
        color: (this._active) ? accentYellow : accentYellow.withOpacity(0.3),
        size: 20,
      );
  }
}
