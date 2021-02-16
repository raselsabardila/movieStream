import 'package:flutter/material.dart';
import 'package:movieStream/resources/model/TypeSlidderItem.dart';
import 'package:movieStream/resources/styles/Style.dart';
import 'package:movieStream/resources/views/DetailScreen.dart';

class SlidderComingFilm extends StatelessWidget {
  String _name, _subTitle, imgURL;
  int _index;

  SlidderComingFilm(this._name, this._subTitle, this._index, this.imgURL);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailScreen();
        }));
      },
      child: Container(
        margin: EdgeInsets.only(right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: TypeSliderItem.type[this._index][0],
              height: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(this.imgURL), fit: BoxFit.cover)),
            ),
            SizedBox(height: 10),
            Text(
              this._name,
              style: titleSection.copyWith(
                fontSize: TypeSliderItem.type[this._index][1],
              ),
            ),
            SizedBox(height: 4),
            Text(this._subTitle, style: subTitle)
          ],
        ),
      ),
    );
  }
}
