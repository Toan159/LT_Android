// import 'dart:html';

import 'package:flutter/material.dart';

class PageMyProfile extends StatefulWidget {
  const PageMyProfile({Key? key}) : super(key: key);

  @override
  State<PageMyProfile> createState() => _PageMyProfileState();
}

class _PageMyProfileState extends State<PageMyProfile> {
  String gioiTinh = "Nam";
  int indexBar = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Toàn"),
              accountEmail: Text("toanlt@ntu.edu.vn"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("asset/images/logo.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Inbox"),
              trailing: Text("11"),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Draft"),
              // trailing: Text("2"),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Archive"),
              // trailing: Text("2"),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Sent"),
              // trailing: Text("2"),
            ),
            ListTile(
              leading: Icon(Icons.inbox),
              title: Text("Trash"),
              // trailing: Text("2"),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.inbox),
                  title: Text("Settings"),
                  // trailing: Text("2"),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexBar,
        onTap: (value) {
          switch (value) {
            case 0:
              _showSnackbar(context, "Bạn mở cửa sổ Ibox");
              break;
            case 1:
              _showSnackbar(context, "Bạn mở danh sách Contacts");
              break;
            case 2:
              _showSnackbar(context, "Bạn đang gì đó!!!");
              break;
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.email), label: "Ibox"),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail), label: "Contacts"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: "Calendar"),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Image.asset("asset/images/logo.png"),
              ),
              Text("Họ tên"),
              Text(
                "Chưa Qua Môn",
                style: TextStyle(
                    // fontSize: 20,
                    color: Colors.blue[800],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                "Ngày Sinh",
                style: TextStyle(fontSize: 15),
              ),
              Text(
                "14/02/2000",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Giới Tính"),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListTile(
                      leading: Radio(
                        value: "Nam",
                        groupValue: "gioiTinh",
                        onChanged: (value) {
                          setState(() {
                            gioiTinh = value as String;
                          });
                        },
                      ),
                      title: Text("Nam"),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ListTile(
                      leading: Radio(
                        value: "Nữ",
                        groupValue: "gioiTinh",
                        onChanged: (value) {
                          setState(() {
                            gioiTinh = value as String;
                          });
                        },
                      ),
                      title: Text("Nữ"),
                    ),
                  ),
                ],
              ),
              Text("Quê Quán"),
              Text(
                "Nha Trang, Khánh Hòa",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Sở Thích"),
              Text(
                "Nghe nhạc",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showSnackbar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        // content: Text("onTap"),
        content: Text(message),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
