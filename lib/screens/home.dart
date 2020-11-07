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
              height: size.height * 0.6,
              child: Image.asset("assets/images/download.jpg"),
            ),
            Text("Technology is best when it brings people together"),
          ],
        ),
      ),
    );
  }
}
