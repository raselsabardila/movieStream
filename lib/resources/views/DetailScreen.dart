import 'package:flutter/material.dart';
import 'package:movieStream/resources/components/DetailScreen/ItemSlidderCast.dart';
import 'package:movieStream/resources/components/DetailScreen/Jumbotron.dart';
import 'package:movieStream/resources/components/DetailScreen/RowBigIconDetail.dart';
import 'package:movieStream/resources/components/DetailScreen/RowStar.dart';
import 'package:movieStream/resources/components/HomeScreen/TitleSection.dart';
import 'package:movieStream/resources/styles/Style.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Jumbotron(),
                SizedBox(
                  height: 32,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "The Anonymous",
                        style: bigTitle,
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Sci-Fiction",
                        style: subTitle,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                RowStar(4),
                SizedBox(
                  height: 25,
                ),
                RowBigIconDetail(),
                SizedBox(
                  height: 40,
                ),
                TitleSection("Cast"),
                SizedBox(
                  height: 15,
                ),
                Container(
                  margin: EdgeInsets.only(left: 25, bottom: 25),
                  width: double.infinity,
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: ItemSlidderCast(),
                      ),
                      ItemSlidderCast(),
                      ItemSlidderCast(),
                      SizedBox(width: 10,)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
