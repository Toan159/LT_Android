// import 'package:flutter/foundation.dart';
// import 'package:first_app_flutter/Firebase/page_home.dart';
// import 'package:first_app_flutter/shared_preferences/page_shared.dart';
import 'package:flutter/material.dart';

import 'First_Route.dart';
// import 'GetX/Controller.dart';
// import 'Profile/Photo/Gird_View.dart';
// import 'SendRoute.dart';
// import 'Profile/Page_profile.dart';
// import 'Profile/TH_Buoi_2_BaiTap6.dart';
// import 'Profile/page_image.dart';
// import 'Change/Page_Counter.dart';
// import 'form/page_form_mathang.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: const MyHomePage(title: 'Flutter Hello Word'),
      // home: const PageMyProfile(),
      // home: PageFormMatHang(),
      // home: const PageHome(),
      // home: const SanPham(),
      // home: const PageGridviewExtends(),
      // home: const CounterApp(),
      home: FistRoute(),
      // home: HomeController(),
      // home: PageCounterSharedPref(),
      // home: GirdView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
