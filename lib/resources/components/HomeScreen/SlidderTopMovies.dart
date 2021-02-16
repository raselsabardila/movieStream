import 'package:flutter/material.dart';

import 'SlidderComingFilm.dart';

class SlidderTopMovies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 240,
      margin: EdgeInsets.only(left: 25),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SlidderComingFilm("Free Guy", "Comedy", 1,
              "https://images.unsplash.com/photo-1521341057461-6eb5f40b07ab?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8Z3V5c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          SlidderComingFilm("The Dark Knight", "Action", 1,
              "https://images.unsplash.com/photo-1583156340160-7867f31285d5?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8YmF0bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          SlidderComingFilm("Anonymus", "Technology", 1,
              "https://images.unsplash.com/photo-1590586914586-9df5c6dfc39d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OHx8YmF0bWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
          SizedBox(width: 10)
        ],
      ),
    );
  }
}
