import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselSlider extends StatefulWidget {
  const CarouselSlider({Key? key}) : super(key: key);
  @override
  State<CarouselSlider> createState() => _CarouselSlider();
}

class _CarouselSlider extends State<CarouselSlider> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("CarouselSlider"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
        ),
      ),
    );
  }
}
