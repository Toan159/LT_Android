import 'package:badges/badges.dart';
import 'package:first_app_flutter/GetX/Profile/Catalog_Provider/provider_catalog.dart';
// import 'package:first_app_flutter/Profile/Catalog_Provider/provider_catalog.dart';
import 'package:first_app_flutter/Profile/list_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';

class AppCatalogN5 extends StatefulWidget {
  const AppCatalogN5({Key? key}) : super(key: key);

  @override
  State<AppCatalogN5> createState() => _AppCatalogN5State();
}

class _AppCatalogN5State extends State<AppCatalogN5> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    // return ChangeNotifier(
    //   create: (context) => CatalogN5(),
    //   lazy:true;
    // );
  }
}

class PageCataLogN5 extends StatefulWidget {
  const PageCataLogN5({Key? key}) : super(key: key);

  @override
  State<PageCataLogN5> createState() => _PageCataLogN5State();
}

class _PageCataLogN5State extends State<PageCataLogN5> {
  get badges => null;

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text("App CataLog"),
        actions: [
          Consumer<CatalogN5>(
            builder: (context, catalog, child) => badges.Badge(
                // showBade : điều kiện hiển thị  badges
                // badgesContent: Widget hiển thị  badges,
                // child: Icon mà badges hiển trị trên,
                //  poistion: Vị trí hiển trị page
                ),
          ),
        ],
      ),
      body: Consumer<CatalogN5>(
        builder: (context, catalog, child) {
          // listViewContext = context;
          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
            itemCount: catalog.MhFruit.length,
            separatorBuilder: (context, index) => const Divider(
              thickness: 2,
            ),
            itemBuilder: (context, index) => Slidable(
              child: ListTile(
                leading: Text(
                  "$index + 1",
                  style: TextStyle(fontSize: 15),
                ),
                title: Text(catalog.MhFruit[index].tenMH),
                // trailing: Text(catalog.MhFruit[index].gia.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}


 // body: ListView.separated(
      //   padding: const EdgeInsets.fromLTRB(8.0, 0, 8, 0),
      //   itemBuilder: (context,c index) => ListTile(
      //     leading: Text(
      //       "${index + 1}",
      //       style: TextStyle(fontSize: 20),
      //     ),
      //      title: Text(catalog.[index].m),
      //         trailing: Text(catalog.slMH.toString()),
      //     subtitle: Text("Có phun thuốc trừ sâu"),
      //   ),
      //   separatorBuilder: (context, index) => Divider(
      //     thickness: 2,
      //   ),
      //   itemCount: list.length,
      // ),
      // body: Consumer<CatalogN5>(
      //   builder: (context, catalog, child) {
      //     // listView Context = context;
      //     return ListView.separated(
      //       itemBuilder: (BuildContext context, int index) => Slidable(
      //         child: ListTile(
      //           leading: Icon(
      //             Icons.add_shopping_cart,
      //             color: Colors.blue,
      //           ),
      //           title: Text(catalog.MatHangs[index].tenMH),
      //           trailing: Text(catalog.slMH.toString()),
      //         ),
      //       ),
      //     );
      //   },
      // ),