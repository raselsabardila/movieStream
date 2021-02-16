import 'package:flutter/material.dart';
import 'package:movieStream/resources/components/HomeScreen/HeaderBar.dart';
import 'package:movieStream/resources/components/HomeScreen/SlidderTopMovies.dart';
import 'package:movieStream/resources/components/HomeScreen/SliderComingAll.dart';
import 'package:movieStream/resources/components/HomeScreen/TitleSection.dart';
import 'package:movieStream/resources/styles/Style.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                HeaderBar(),
                SizedBox(height: 30),
                TitleSection("Coming Soon"),
                SizedBox(height: 15),
                SlidderComingAll(),
                SizedBox(height: 30),
                TitleSection("Top Movies"),
                SizedBox(height: 15),
                SlidderTopMovies(),
                SizedBox(height: 20)
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: accentYellow,
          backgroundColor: netralWhite,
          iconSize: 28,
          elevation: 0,
          onTap: (value) {
            // Respond to item press.
          },
          items: [
            BottomNavigationBarItem(
              title: Padding(
                padding: EdgeInsets.only(bottom: 10, left: 50),
                child: Text(
                  'Home',
                  style: bottomNavText.copyWith(color: accentYellow),
                ),
              ),
              icon: Padding(
                child: Icon(Icons.home),
                padding: EdgeInsets.only(top: 10, left: 50),
              ),
            ),
            BottomNavigationBarItem(
              title: Text(
                'Explore',
                style: bottomNavText.copyWith(color: netralGrey),
              ),
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              title: Padding(
                padding: EdgeInsets.only(bottom: 10, right: 58),
                child: Text(
                  'You',
                  style: bottomNavText.copyWith(color: netralGrey),
                ),
              ),
              icon: Padding(
                child: Icon(Icons.supervised_user_circle_outlined),
                padding: EdgeInsets.only(top: 10, right: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
