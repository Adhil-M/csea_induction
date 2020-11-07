import 'package:flutter/material.dart';

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  bool isshow;
  var w, h, r, l;
  initState() {
    isshow = false;
  }

  final mycontroller1 = TextEditingController();
  final mycontroller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      child: Container(
        width: size.width,
        child: Column(
          children: <Widget>[
            Text("BMI Calculator"),
            isshow == false
                ? Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: mycontroller1,
                      decoration: InputDecoration(
                          hintText: "Enter height of person",
                          hintStyle: TextStyle(fontSize: 15)),
                    ),
                  )
                : Text("Your IBM value is : $r"),
            isshow == false
                ? Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextField(
                      controller: mycontroller2,
                      decoration: InputDecoration(
                          hintText: "Enter weight of person",
                          hintStyle: TextStyle(fontSize: 15)),
                    ),
                  )
                : Text(""),
            isshow == false
                ? RaisedButton(
                    onPressed: () {
                      setState(() {
                        h = double.parse(mycontroller1.text);
                        w = double.parse(mycontroller2.text);
                        r = double.parse((w / (h * h).toStringAsFixed(3)));

                        isshow = true;
                      });
                    },
                    child: Text("Calculate"),
                  )
                : RaisedButton(
                    onPressed: () {
                      setState(() {
                        isshow = false;
                      });
                    },
                    child: Text("Calculate Again"),
                  )
          ],
        ),
      ),
    );
  }
}
