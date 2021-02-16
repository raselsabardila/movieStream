import 'package:flutter/material.dart';

import 'StarIcon.dart';

class RowStar extends StatelessWidget {
  int _active;
  List<Widget> _stars = [];

  RowStar(this._active) {
    for (var i = 1; i <= 5; i++) {
      if (i <= this._active) {
        this._stars.add(StarIcon(true));
        this._stars.add(SizedBox(width: 1));
      } else {
        this._stars.add(StarIcon(false));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: this._stars,
    );
  }
}
