import 'package:flutter/material.dart';
import 'package:movieStream/resources/styles/Style.dart';
import 'package:movieStream/resources/views/HomeScreen.dart';

class Jumbotron extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: Container(
        padding: EdgeInsets.all(25),
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 1.7,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) {
                  return HomeScreen();
                }), (route) => false);
              },
              child: Container(
                width: 32,
                height: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: netralWhite),
                child: Center(
                    child: Icon(
                  Icons.arrow_back_ios_rounded,
                  size: 20,
                )),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1568611066080-e54db9abb0f4?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YW5vbnltb3VzfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                fit: BoxFit.cover)),
      ),
      shaderCallback: (box) {
        return LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.transparent],
        ).createShader(Rect.fromLTRB(0, 0, 0, box.size.height));
      },
      blendMode: BlendMode.dstIn,
    );
  }
}
