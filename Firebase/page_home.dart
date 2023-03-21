// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app_flutter/Firebase/page_firebase_app.dart';

class PageHome extends StatelessWidget {
  const PageHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                buildButton(context,
                    title: 'My Firebase App', destination: MyFirebaseApp()),
              ],
            ),
          ),
        ));
  }

  Container buildButton(BuildContext context,
      {required String title, required Widget destination}) {
    return Container(
      width: 180,
      child: ElevatedButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => destination,
            )),
        child: Text(title),
      ),
    );
  }
}
