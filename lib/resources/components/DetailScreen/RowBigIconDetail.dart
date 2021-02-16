import 'package:flutter/material.dart';
import 'package:movieStream/resources/styles/Style.dart';

import 'BigIconDetail.dart';

class RowBigIconDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        BigIconDetail(Icons.play_arrow_rounded, accentYellow, 35),
        SizedBox(width: 15),
        BigIconDetail(Icons.thumb_up_rounded, netralGrey, 22)
      ],
    );
  }
}
