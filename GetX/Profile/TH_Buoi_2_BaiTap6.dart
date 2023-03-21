// import 'package:flutter/cupertino.dart';
// import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SanPham extends StatefulWidget {
  const SanPham({Key? key}) : super(key: key);

  @override
  State<SanPham> createState() => _SanPham();
}

class _SanPham extends State<SanPham> {
  List<String> img = [
    'asset/images/RAMpng.png',
    'asset/images/RAM.png',
    'asset/images/ckeditor_3110094.jpg',
    'asset/images/RAMpng.png',
  ];
  int imagePos = 0;

  @override
  Widget build(BuildContext context) {
    // // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("Giới Thiệu Sản Phẩm"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CarouselSlider.builder(
                  itemCount: img.length,
                  itemBuilder: (context, index, realIndex) => Container(
                    child: Image.asset(img[index]),
                  ),
                  options: CarouselOptions(
                      viewportFraction: 1,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          imagePos = index;
                        });
                      }),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              // Container(
              //   // child: Image.asset("asset/images/RAM.png"),
              //   child: Image.asset("asset/images/RAMpng.png"),
              // ),
              Row(
                children: [
                  SizedBox(width: 300),
                  Text(
                    "${imagePos + 1}/${img.length}",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "RAM LapTop KingMax 8GB DDR4 2400 - Hàng chính hãng",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "900.000đ",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(width: 30),
                  Text(
                    "800.000đ",
                    style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Text("900.000đ"),
                  // Text("800.000d"),
                  Icon(Icons.star, color: Colors.yellow[500]),
                  Icon(Icons.star, color: Colors.yellow[500]),
                  Icon(Icons.star, color: Colors.yellow[500]),
                  Icon(Icons.star, color: Colors.yellow[500]),
                  Icon(Icons.star, color: Colors.black),
                  SizedBox(width: 10),
                  Text("(Xem 100 đánh giá)"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
