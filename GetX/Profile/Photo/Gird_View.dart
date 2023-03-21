// import 'package:flutter/cupertino.dart';
import 'package:first_app_flutter/Profile/list_view.dart';
import 'package:flutter/material.dart';

class XePKL {
  String ten;
  String url;

  XePKL(this.ten, this.url);
}

XePKL xe1 = XePKL("Xe FZR250",
    "https://imgwebikenet-8743.kxcdn.com/moto_img/cg/7/6667/L_fzr250_1986.jpg");
XePKL xe2 = XePKL("Xe DKM Duke 300",
    "https://images.autofun.vn/file1/ff266a2fae6b4834a7291e8e5ed824ff_800.png");
XePKL xe3 = XePKL("Xe Honda CBR1000RR-R",
    "https://news-8743.kxcdn.com/wp-content/uploads/2016/07/108.jpg");
XePKL xe4 = XePKL("Xe Z1000",
    "https://img.websosanh.vn/v2/users/review/images/g15lgqv6zu90y.jpg?compress=85");
XePKL xe5 = XePKL("Xe R5",
    "https://image-us.24h.com.vn/upload/2-2018/images/2018-04-11/1523426695-274-2018-yamaha-r15-v30-len-ke-gia-56-trieu-vnd-ya1-1523372510-width660height542.jpg");
XePKL xe6 = XePKL("Xe BMW S1000RR",
    "https://imgwebikevn-8743.kxcdn.com/9BgtQV--lKLTNGZw6PpNyS6sa60=/master/series/834_s1000rr.jpg");
XePKL xe7 = XePKL("Xe Kawasaki Z800",
    "https://imgwebikevn-8743.kxcdn.com/cB0rZlPISxNGeX00U1nFIdrSnUI=/fit-in/640x480/master/series/21_z800.jpg");
XePKL xe8 = XePKL("Xe Yamaha ZY-R1",
    "https://caferide.net/wp-content/uploads/2022/09/2022_YZF-R1_DPBMC_AUS_STU_001_800x600.jpeg");
XePKL xe9 = XePKL("Xe Cruiser",
    "https://darwinmotors.com/wp-content/uploads/2020/05/5-3.jpg");
XePKL xe10 = XePKL("Xe Sport bike",
    "https://img.freepik.com/premium-psd/isolated-black-sport-bike-from-left-front-view_16145-349.jpg");
XePKL xe11 = XePKL("Xe Dual-sport",
    "https://www.dirtrider.com/resizer/2UFR4MhDMjYbMsFhVak96Ji0uKg=/1440x0/smart/cloudfront-us-east-1.images.arcpublishing.com/octane/UWIMF7JBINH5ZIFZ2WECH6QYHI.jpg");
XePKL xe12 = XePKL("Xe Naked bike",
    "https://hips.hearstapps.com/roa.h-cdn.co/assets/16/04/bimota-tesi-3d-rc_1.png?resize=480:*");
// XePKL xe13 = XePKL("Xe R5",
//     "https://image-us.24h.com.vn/upload/2-2018/images/2018-04-11/1523426695-274-2018-yamaha-r15-v30-len-ke-gia-56-trieu-vnd-ya1-1523372510-width660height542.jpg");
// XePKL xe14 = XePKL("Xe BMW S1000RR",
//     "https://imgwebikevn-8743.kxcdn.com/9BgtQV--lKLTNGZw6PpNyS6sa60=/master/series/834_s1000rr.jpg");
// XePKL xe15 = XePKL("Xe Kawasaki Z800",
//     "https://imgwebikevn-8743.kxcdn.com/cB0rZlPISxNGeX00U1nFIdrSnUI=/fit-in/640x480/master/series/21_z800.jpg");
// XePKL xe16 = XePKL("Xe Yamaha ZY-R1",
//     "https://caferide.net/wp-content/uploads/2022/09/2022_YZF-R1_DPBMC_AUS_STU_001_800x600.jpeg");

List<XePKL> listXe = [
  xe1,
  xe2,
  xe3,
  xe4,
  xe5,
  xe6,
  xe7,
  xe8,
  xe9,
  xe10,
  xe11,
  xe12
];

class GirdView extends StatefulWidget {
  const GirdView({Key? key}) : super(key: key);

  @override
  State<GirdView> createState() => _GirdViewState();
}

class _GirdViewState extends State<GirdView> {
  @override
  Widget build(BuildContext context) {
    // return const Placeholder();
    return Scaffold(
      appBar: AppBar(
        title: Text("Gird View Images"),
      ),
      body: GridView.extent(
        padding: const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
        maxCrossAxisExtent: 250,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.8,
        children: listXe
            .map(
              (e) => SingleChildScrollView(
                child: Card(
                  elevation: 1,
                  shadowColor: Colors.blue,
                  child: Column(
                    children: [
                      Image.network(
                        e.url,
                      ),
                      Text(
                        e.ten,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
