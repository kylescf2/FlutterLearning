import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'shopping_list.dart';

//void main() => runApp(new MyApp());

// TODO: test
//void main() {
//  runApp(MaterialApp(
//    title: 'Shopping App',
//    home: ShoppingList(
//      products: <Product>[
//        Product(name: 'Eggs'),
//        Product(name: 'Flour'),
//        Product(name: 'Chocolate chips'),
//      ],
//    ),
//  ));
//}

void main() {
  runApp(CupertinoApp(
    home: new Container(
        decoration: new BoxDecoration(
            border: new Border.all(width: 2.0, color: Colors.red),
            borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
            color: Colors.grey
        ),
        child: buildRow()
    )
  ));
}

///

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Container(
          decoration: new BoxDecoration(color: Colors.white),
          child: new Counter()
      )
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => new _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        new RaisedButton(onPressed: _increment, child: new Text('Increment'), textColor: Colors.black,),
        new Text('Count: $_counter'),
      ]
    );
  }
}

Widget buildRow() {
  return Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.green[500]),
      Icon(Icons.star, color: Colors.black),
      Icon(Icons.star, color: Colors.black),
    ],
  );
}

Widget buildColumn() {
  return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset('images/pic1.jpg'),
        Image.asset('images/pic2.jpg'),
        Image.asset('images/pic3.jpg'),
      ]
  );
}