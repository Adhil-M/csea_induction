import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Center(
        child: Container(
      width: size.width,
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.height * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Feel free to contact us @",
            style: TextStyle(fontSize: 20),
          ),
          Padding(padding: EdgeInsets.only(top: 20)),
          Text(
            "Computer Science and Engineering Association,",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "National Institute of Technology Calicut,",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "NITC Campus P.O., Kozhikode",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "PIN: 683 601",
            style: TextStyle(fontSize: 15),
          ),
          Text(
            "Email: csea@nitc.ac.in",
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    ));
  }
}
