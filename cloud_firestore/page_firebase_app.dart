import 'package:first_app_flutter/cloud_firestore/MyFireBaseConnet.dart';
import 'package:first_app_flutter/cloud_firestore/firebase_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class MyFirebaseApp extends StatelessWidget {
  const MyFirebaseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return MyFireBaseConnect(
      builder: (context) => PageSVs(),
      errorMessage: "Lỗi",
      connectingMessage: "Xe bị lủng lốp",
    );
  }
}

class PageSVs extends StatelessWidget {
  const PageSVs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text("Danh Sách Sinh Viên"),
      ),
      body: StreamBuilder<List<SinhVienSnapShot>>(
        stream: SinhVienSnapShot.dsSVTuFireBase(),
        builder: (context, snapshot) {
          print(snapshot.error);
          if (snapshot.hasError) {
            return Center(
              child: Text(
                "Lỗi truy vấn!!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
            );
          } else {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              var list = snapshot.data!;
              return ListView.separated(
                itemBuilder: (context, index) {
                  return Slidable(
                    child: ListTile(
                      // leading: Text("${snapshot.data![index].sinhVien!.id}"),
                      leading: Text("${index + 1}"),
                      title: Text("${snapshot.data![index].sinhVien!.ten}"),
                      subtitle: Text("${snapshot.data![index].sinhVien!.lop}"),
                    ),
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: (context) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PageSVs(),
                              ),
                            );
                          },
                          label: "Xem",
                          icon: Icons.remove_red_eye,
                          foregroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          label: "Edit",
                          icon: Icons.edit,
                          foregroundColor: Colors.blue,
                        ),
                        SlidableAction(
                          onPressed: (context) {},
                          label: "Xóa ",
                          icon: Icons.delete,
                          foregroundColor: Colors.red,
                        )
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                  thickness: 1,
                ),
                itemCount: snapshot.data!.length,
              );
            }
          }
        },
      ),
    );
  }
}
