import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:first_app_flutter/Firebase/firebase_data.dart';

class PageSinhVien extends StatefulWidget {
  const PageSinhVien({Key? key}) : super(key: key);

  @override
  State<PageSinhVien> createState() => _PageSinhVienState();
}

class _PageSinhVienState extends State<PageSinhVien> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My Firebase App"),
        ),
        body: StreamBuilder<List<SinhVienSnapShot>>(
            stream: SinhVienSnapShot.dsSVTuFirebase(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print(snapshot.error);
                return Center(
                  child: Text('Lỗi xảy ra khi truy vấn dữ liệu'),
                );
              } else if (!snapshot.hasData)
                return Center(
                  child: Text('Đang tải dữ liệu...'),
                );
              else
                return ListView.separated(
                  itemBuilder: (context, index) => Slidable(
                    child: ListTile(
                      leading: Text(
                        '${snapshot.data![index].sinhVien!.id}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      title: Text('${snapshot.data![index].sinhVien!.ten}'),
                      subtitle: Text('${snapshot.data![index].sinhVien!.lop}'),
                    ),
                    startActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [],
                    ),
                    endActionPane: ActionPane(
                      motion: ScrollMotion(),
                      children: [
                        SlidableAction(
                          onPressed: null,
                          icon: Icons.details,
                          foregroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: null,
                          icon: Icons.edit,
                          foregroundColor: Colors.blue,
                        ),
                        SlidableAction(
                          onPressed: null,
                          icon: Icons.delete_forever,
                          foregroundColor: Colors.red,
                        )
                      ],
                    ),
                  ),
                  separatorBuilder: (context, index) => const Divider(
                    thickness: 1,
                  ),
                  itemCount: snapshot.data!.length,
                );
            }));
  }
}
