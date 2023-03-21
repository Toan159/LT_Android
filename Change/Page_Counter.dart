import 'package:first_app_flutter/Change/ChangeNotifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: PageCounter(),
    );
  }
}

class PageCounter extends StatelessWidget {
  const PageCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return ChangeNotifierProvider(
      create: (context) => Counter(),
      child: PageCounter(),
    );
  }
}
