import 'package:flutter/material.dart';

import 'SlidderComingFilm.dart';

class SlidderComingAll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      margin: EdgeInsets.only(left: 25),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SlidderComingFilm("Scarry Cown IT Gore", "April 2021", 0,
              "https://images.unsplash.com/photo-1601513445498-5dbffc8d5d5a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZmlsbSUyMGhvcnJvcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          SlidderComingFilm("Percy Jackson : Lightning Thief", "March 2015", 0,
              "https://images.unsplash.com/photo-1565284827379-2d57614cc1e4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8emV1c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
