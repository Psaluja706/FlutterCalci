import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  var n1 = 0, n2 = 0, sum = 0;
  void add() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 + n2;
    });
  }

  void sub() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 - n2;
    });
  }

  void multi() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 * n2;
    });
  }

  void div() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 ~/ n2;
    });
  }

  void clear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Calculator"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output: $sum",
              style: new TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: Text("+"),
                  color: Colors.orange,
                  onPressed: add,
                ),
                new MaterialButton(
                  child: Text("-"),
                  color: Colors.orange,
                  onPressed: sub,
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: Text("*"),
                  color: Colors.orange,
                  onPressed: multi,
                ),
                new MaterialButton(
                  child: Text("/"),
                  color: Colors.orange,
                  onPressed: div,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: Text("Clear"),
                  color: Colors.orange,
                  onPressed: clear,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
