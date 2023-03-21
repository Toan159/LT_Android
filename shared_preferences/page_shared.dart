import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageCounterSharedPref extends StatefulWidget {
  const PageCounterSharedPref({Key? key}) : super(key: key);

  @override
  State<PageCounterSharedPref> createState() => _PageCounterSharedPrefState();
}

class _PageCounterSharedPrefState extends State<PageCounterSharedPref> {
  int? count;
  String key_pref = "counter";

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    print("Buil");
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Shared Pref"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                // ghi dữ liệu vào
                count = count! + 1;
                preferences.setInt(key_pref, count!);
                _redData();
              },
              child: Text("Tăng"),
            ),
            Text("${count ?? 0}"),
            // Text("${count ?? "đang đọc..."}"),
            // Text("0"),
            // -----
            ElevatedButton(
              onPressed: () async {
                SharedPreferences preferences =
                    await SharedPreferences.getInstance();
                // ghi dữ liệu vào
                count = count! - 1;
                preferences.setInt(key_pref, count!);
                _redData();
              },
              child: Text("Giảm"),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _redData();
    print("End init");
    // SharedPreferences preferences = await SharedPreferences.getInstance();
    // count = preferences.getInt(key_pref) ?? 0; // ko trả về giá trị null
  }

  _redData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    setState(() {
      count = preferences.getInt(key_pref) ?? 0; // ko trả về giá trị null
    });
    // print("count: $count");
  }
}
