import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MyFireBaseConnect extends StatefulWidget {
  final String? errorMessage;
  final String? connectingMessage;
  final Widget Function(BuildContext context)? builder;

  const MyFireBaseConnect(
      {Key? key,
      this.errorMessage,
      this.connectingMessage,
      required this.builder})
      : super(key: key);

  @override
  State<MyFireBaseConnect> createState() => _MyFireBaseConnectState();
}

class _MyFireBaseConnectState extends State<MyFireBaseConnect> {
  bool ketNoi = false;
  bool loi = false;

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    if (loi) {
      return Container(
        color: Colors.white,
        child: Center(
          child: Text(
            widget.errorMessage!,
            style: TextStyle(fontSize: 16),
            // textDirection: TextDecoration.ltr,
          ),
        ),
      );
    } else {
      if (!ketNoi) {
        return Container(
          color: Colors.white,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                Text(
                  widget.connectingMessage!,
                  style: TextStyle(fontSize: 16),
                  // textDirection: TextDecoration.ltr,
                ),
              ],
            ),
          ),
        );
      } else {
        return widget.builder!(context);
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _khoiTaoFireBase();
  }

  _khoiTaoFireBase() {
    // initi.. là phương thức bất đồng bộ
    Firebase.initializeApp()
        .then((value) => {
              // trương đương với try
              setState(() {
                ketNoi = true;
                // print(ketNoi);
              })
            })
        .catchError((error) {
      // tương đương với catch
      setState(() {
        loi = true;
      });
      print(error.toString());
    }).whenComplete(() =>
            print("Kết thúc hoàn thành/hay lỗi")); // tương đương với finally
  }
}
