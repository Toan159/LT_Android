import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> img = [
  "asset/images/RAMpng.png",
  "asset/images/RAM.png",
  "asset/images/ckeditor_3110094.jpg",
  "asset/images/RAMpng.png",
  "asset/images/RAM.png",
  "asset/images/ckeditor_3110094.jpg",
  "asset/images/RAMpng.png",
  "asset/images/RAM.png",
  "asset/images/ckeditor_3110094.jpg",
  "asset/images/RAMpng.png",
  "asset/images/RAM.png",
  "asset/images/ckeditor_3110094.jpg",
  "asset/images/RAMpng.png",
  "asset/images/RAM.png",
  "asset/images/ckeditor_3110094.jpg",
  "asset/images/RAMpng.png",
  "asset/images/RAM.png",
  "asset/images/ckeditor_3110094.jpg",
];

class PageGridviewExtends extends StatefulWidget {
  const PageGridviewExtends({Key? key}) : super(key: key);

  @override
  State<PageGridviewExtends> createState() => _PageGridviewExtends();
}

class _PageGridviewExtends extends State<PageGridviewExtends> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("My Gridview Extends"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        cacheExtent: 10,
        children: List.generate(
          img.length,
          (index) => GestureDetector(
            child: Container(child: Image.asset(img[index])),
          ),
          // children: img
          //     .map(
          //       (e) => GestureDetector(
          //         child: Container(
          //           child: Image.asset(e),
          //         ),
          //       ),
          //     )
          //     .toList(),
        ),
      ),
    );
  }
}
