import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'shopping_list.dart';

void main() => runApp(new FooApp());

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


class FooApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
        title: 'Flutter layout demo',
        home: new Stack(
          children: <Widget>[Positioned(
              left: 40,
              bottom: 10,
//            decoration: new BoxDecoration(color: Colors.white),
              child: buildContainer(context)
          ),

          Positioned(
              left: 40,
              bottom: 100,
//            decoration: new BoxDecoration(color: Colors.white),
              child: buildContainer(context)
          )

          ],
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
//    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Image.asset('images/pic1.jpg'),
      Image.asset('images/pic2.jpg'),
      Image.asset('images/pic3.jpg'),
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

Widget buildContainer(BuildContext context) {
  var container_test = Container(
    width: 200,
    height: 10.0,
    decoration: BoxDecoration(color: Colors.red),
  );

  return container_test;
}
