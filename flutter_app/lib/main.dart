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
        home: new Container(
            decoration: new BoxDecoration(color: Colors.white),
            child: buildContainer(context)
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
    constraints: new BoxConstraints.expand(
      height:Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
    ),
    decoration: new BoxDecoration(
      border: new Border.all(width: 2.0, color: Colors.red),
      color: Colors.grey,
      borderRadius: new BorderRadius.all(new Radius.circular(20.0)),
//      image: new DecorationImage(
//        image: new NetworkImage('http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg'),
//        centerSlice: new Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
//      ),
    ),
    padding: const EdgeInsets.all(8.0),
    alignment: Alignment.center,
    child: new Text('Hello World',
        style: Theme.of(context).textTheme.display1.copyWith(color: Colors.black)),
  );

  return container_test;
}
