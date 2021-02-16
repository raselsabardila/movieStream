import 'package:flutter/material.dart';
import 'package:movieStream/resources/styles/Style.dart';

class HeaderBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(
            Icons.menu,
            color: netralBlack,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/flagged/photo-1573740144655-bbb6e88fb18a?ixid=MXwxMjA3fDB8MHxzZWFyY2h8M3x8dXNlcnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
