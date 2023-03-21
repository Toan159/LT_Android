// import 'package:flutter/cupertino.dart';
import 'package:first_app_flutter/shared_preferences/page_shared.dart';
import 'package:flutter/material.dart';

import 'Firebase/page_home.dart';
import 'GetX/Profile/Catalog_Provider/catalog_app.dart';
import 'GetX/Profile/Photo/Gird_View.dart';
import 'GetX/Profile/TH_Buoi_2_BaiTap6.dart';
import 'GetX/Profile/list_view.dart';
import 'form/page_form_mathang.dart';

class FistRoute extends StatefulWidget {
  FistRoute({Key? key}) : super(key: key);

  @override
  State<FistRoute> createState() => _FistRoute();
}

class _FistRoute extends State<FistRoute> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    // throw UnimplementedError();
    return Scaffold(
      appBar: AppBar(
        title: Text("List Execrise"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
              ),
              child: Text("PageFormMatHang"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => PageFormMatHang()),
                  )),
            ),
            // ---------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
              ),
              child: Text("SanPham"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => SanPham()),
                  )),
            ),
            // ---------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
              ),
              child: Text("PageHome"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => PageHome()),
                  )),
            ),
            // ---------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
              ),
              child: Text("List View Fruit"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => listView()),
                  )),
            ),
            // -------------------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
              ),
              child: Text("Counter Shared Preferences"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => PageCounterSharedPref()),
                  )),
            ),
            // ---------------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
              ),
              child: Text("Gird View"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => GirdView()),
                  )),
            ),
            // ---------------
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 40),
              ),
              child: Text("App CataLog"),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => AppCatalogN5()),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
