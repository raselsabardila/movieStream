import 'package:flutter/material.dart';
import 'package:movieStream/resources/styles/Style.dart';

class ItemSlidderCast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15),
      padding: EdgeInsets.all(10),
      width: 220,
      height: double.infinity,
      decoration: BoxDecoration(
          color: netralWhite,
          boxShadow: [
            BoxShadow(color: netralGrey.withOpacity(0.1), spreadRadius: 1)
          ],
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: <Widget>[
          Container(
            width: 80,
            height: 100,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://images.unsplash.com/photo-1584799235813-aaf50775698c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8Z3V5fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(3)),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ujang Skop",
                style: littleTitle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Gerald",
                style: subTitle,
              ),
            ],
          )
        ],
      ),
    );
  }
}
