//import 'dart:async';
//import 'dart:io';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  HomePageState createState() {
    return new HomePageState();
  }
}

class HomePageState extends State<HomePage> {
//  String _inputText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foo App'),
      ),
      body: _getBody()
    );
  }

  Widget _getBody() {
    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      child: _buildContent()
    );
  }

  Widget _buildContent() {
    return Stack(
      children: <Widget>[Positioned(
          left: 40,
          bottom: 10,
          child: _buildTestCase()
      ),

      Positioned(
          left: 40,
          bottom: 100,
          child: _buildTitle()
      )
      ],
    );
  }

  Widget _buildContainer() {
    var container = Container(
      width: 200,
      height: 10.0,
      decoration: BoxDecoration(color: Colors.red),
    );

    return container;
  }

  Widget _buildTitle() {
    var container = Container(
      width: 200,
      height: 50.0,
      decoration: BoxDecoration(color: Colors.red),
      child: Row(
//        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(
            Icons.extension,
            size: 22,
            color: Colors.blue,
          ),

          Text(
            "好友微视",
            style: TextStyle(
                fontSize: 13, color: Colors.black, height: 0.9),
          ),

          Expanded(child: Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.arrow_forward,
              size: 22,
              color: Colors.blue,
            )
          )),


        ],
      ),
    );

    return container;
  }
}

Widget _buildTestCase() {
  //正常文字
  var commonStyle = TextStyle(color: Colors.black, fontSize: 18);
//灰色较小文字
  var infoStyle = TextStyle(color: Color(0xff999999), fontSize: 13);
//左边头像
  var headImg = Image.asset(
    "images/pic1.jpg", width: 45, height: 45,
  );

//中间的信息
  var center2 = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text( "心如止水", style: commonStyle,),
      Text(  "《应龙》--张风捷特烈 一游小池两岁月，洗却凡世几闲尘。时逢雷霆风会雨，应乘扶摇化入云。",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: infoStyle,
        textAlign: TextAlign.start,
      )
    ],
  );

//尾部的时间+图标
  var end2 = Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Text("06:45",style: infoStyle),
      Icon(Icons.visibility_off,size: 20,color: Color(0xff999999),
      )
    ],
  );

//整行的内容
  var rowLine2 = Row(
    children: <Widget>[
      Padding(child: headImg, padding: EdgeInsets.all(5)),
      Expanded(child: Padding(padding: EdgeInsets.all(5), child: center2)),
      end2
    ],
  );

//包裹一下，收工
  var test2 = Container(
      width: 300,
      height: 70,
      color: Colors.white,
      padding: EdgeInsets.all(5),
      child: rowLine2);

  return test2;
}
