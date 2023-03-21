import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class HomeController extends StatefulWidget {
  const HomeController({Key? key}) : super(key: key);

  get count => null;

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GetBuilder<Controller>(
              builder: (_) => Text("clicks: ${controller.count}"),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(Second());
                },
                child: Text("Next Route"))
          ],
        ),
      ),
    );
    // return const Placeholder();
  }
}

class Second extends StatelessWidget {
  final Controller ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      body: Center(
        child: Text("${ctrl.count}"),
      ),
    );
  }
}
