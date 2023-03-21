import 'package:first_app_flutter/form/form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MatHang {
  // string MH; & int gia; là thuộc tính không có giá trị null
  String tenMH;
  int gia;

  MatHang({
    required this.tenMH, // required là phương thức khởi tạo (hàm khởi tạo tham số theo tên)
    required this.gia,
  });

  // Tạo một mặt hàng xoài giá 5000
  // MatHang mh = MatHang(tenMH: "Mãng Cầu", gia: 5000);
  // MatHang mh1 = MatHang(tenMH: "Xoài", gia: 15000);
  // MatHang mh2 = MatHang(tenMH: "Nho", gia: 10000);
  // MatHang mh3 = MatHang(tenMH: "Mận", gia: 25000);
  // MatHang mh4 = MatHang(tenMH: "Lê", gia: 20000);
  // MatHang mh5 = MatHang(tenMH: "Táo", gia: 30000);
  // MatHang mh6 = MatHang(tenMH: "Mít", gia: 35000);
  // MatHang mh7 = MatHang(tenMH: "Quýt", gia: 5000);
}

class CatalogN5 extends ChangeNotifier {
  // đối tượng truy cập có bổ cập nào public private
  List<MatHang> MhFruit = [
    MatHang(tenMH: "Mãng Cầu", gia: 5000),
    MatHang(tenMH: "Xoài", gia: 15000),
    MatHang(tenMH: "Nho", gia: 10000),
    MatHang(tenMH: "Mận", gia: 25000),
    MatHang(tenMH: "Lê", gia: 20000),
    MatHang(tenMH: "Táo", gia: 30000),
    MatHang(tenMH: "Mít", gia: 35000),
    MatHang(tenMH: "Quýt", gia: 5000),
    MatHang(tenMH: "", gia: 5000),
  ];

  // giỏ hàng lưu số phần tử vào giỏ hàng (kiểu mảng)
  // giohang[1] = số phần tử ở ngoài list
  List<int> _gioHang = [];

  List<MatHang> get MatHangs => MhFruit;
  List<int> get gioHang => _gioHang;

  int get slMH => _gioHang.length;
  // int get tien => _gioHang.fold(0, (previousValue, element) => previousValue + _MhFruit[element].gia);

  // làm sao để biết mặt hàng trong giỏ hảng
  // giohang[1] là mặt hàng thứ nhất trong giỏ hàng làm sao biết được tên mặt hàng đó?
  // System.out.print("Mặt hàng:" + $tenMH);

  int get TienThanhToan {
    int sum = 0;
    return sum;

    // for (int i = 0; i < slMH; i++) {
    //   for (int j = 0; j < n - i - 1; j++)
    //     if (arr[j] > arr[j + 1]) swap(arr[j], arr[j + 1]);
    // }
  }

  void themVaoGioHang(int index) {
    _gioHang.add(index); // thay đổi số lượng trong giỏ hàng
    notifyListeners();
  }

  void xoaMH(int index) {
    _gioHang.removeAt(index); // thay đổi số lượng trong giỏ hàng
    notifyListeners();
  }

  void capnhat(int index) {}

//  để kiểm tra trong mặt hàng thứ i thì phải kiểm tra có mặt hàng thứ i hay ko
  bool kiemTraMH(int index) {
    for (int i in _gioHang) {
      if (i == index) {
        return true; // kiểm tra số phần tử mặt hàng thứ i chưa có thì thêm vào giỏ hàng
      }
    }
    return false; // là kiểm tra có mặt hàng đó có hay không
  }
}
