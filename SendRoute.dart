import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  @override
  State<SecondRoute> createState() => _SecondRoute();
}

class _SecondRoute extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text("Go back"),
        ),
      ),
    );
  }
}
