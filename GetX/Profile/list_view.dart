import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<String> list = [
  "Ổi",
  "Mãng Cầu",
  "Táo",
  "Xoài",
  "Chuối",
  "Nho",
  "Mận",
  "Lê",
  "Thanh Long",
  "Mít",
  "Chùm ruột",
  "Sầu riêng",
  "Nhãn"
];

// khi bấm ổi, xoài, thì nó lưu cái gì
class listView extends StatefulWidget {
  const listView({Key? key}) : super(key: key);

  @override
  State<listView> createState() => _listView();
}

class _listView extends State<listView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("My List View"),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
        itemBuilder: (context, index) => ListTile(
          leading: Text(
            "${index + 1}",
            style: TextStyle(fontSize: 20),
          ),
          title: Text(list[index]),
          trailing: Text("${Random().nextInt(100)} kg"),
          subtitle: Text("Có phun thuốc trừ sâu"),
        ),
        separatorBuilder: (context, index) => Divider(
          thickness: 2,
        ),
        itemCount: list.length,
      ),
    );
  }
}
