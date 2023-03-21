import 'dart:io';

import 'package:carousel_slider/carousel_options.dart';
// import 'package:first_app_flutter/Profile/CarouselSlider.dart';
// import 'package:first_app_flutter/Profile/Photo/Gird_View.dart';
// import 'package:first_app_flutter/Profile/page_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouseSliderDemo extends StatefulWidget {
  const CarouseSliderDemo({Key? key}) : super(key: key);

  @override
  State<CarouseSliderDemo> createState() => _CarouseSliderDemoState();
}

class _CarouseSliderDemoState extends State<CarouseSliderDemo> {
  // List<XePKL> listXe = [
  //   xe1,
  //   xe2,
  //   xe3,
  //   xe4,
  //   xe5,
  //   xe6,
  //   xe7,
  //   xe8,
  //   xe9,
  //   xe10,
  //   xe11,
  //   xe12
  // ];

  int Image = 0;
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text("Carouse Slide Demo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(),
            ],
          ),
        ),
      ),
    );
  }
}
