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
          child: _buildContainer()
      ),

      Positioned(
          left: 40,
          bottom: 100,
          child: _buildContainer()
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
}
