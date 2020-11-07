import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            Container(
              width: size.width * 0.8,
              child: Image.asset("assets/images/download.jpg"),
            ),
            Text(
              "Technology is best when it brings people together",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
