// ignore_for_file: file_names

// import 'dart:ffi';
// import 'package:flutter/rendering.dart';

class SinhVien {
  String id, ten;
  String? ngaySinh, queQuan;

  SinhVien({required this.id, required this.ten, this.ngaySinh, this.queQuan});

  @override
  String toString() {
    return 'id: $id \n ten: $ten\n ngaySinh: $ngaySinh\n queQuan: $queQuan';
  }
}

class QuanLySinhVien {
  List<SinhVien> _list = [];
  //Properties
  List<SinhVien> get ds => _list;

  void add(SinhVien sv) {
    for (var s in _list) {
      if (s.id == sv.id) {
        return;
      }
    }
    _list.add(sv);
  }

  void update(SinhVien newSV) {
    for (var s in _list) {
      if (s.id == newSV.id) {
        s.ten = newSV.ten;
        s.queQuan = newSV.queQuan;
        s.ngaySinh = newSV.ngaySinh;
      }
    }
  }

  void delete(String id) {
    // _list.remove(Id);
    for (var s in _list) {
      if (s.id == id) {
        // ignore: list_remove_unrelated_type
        _list.remove(id);
      }
    }
  }

  void printInfo() {
    for (var s in _list) {
      print(s.toString());
    }
  }
}

void main() {
  // print("Hello Word!!");
  QuanLySinhVien quanLySV = QuanLySinhVien();
  quanLySV.add(SinhVien(
      id: "01", ten: "Toàn", ngaySinh: "1/12/2001", queQuan: "Nha Trang"));
  quanLySV.add(SinhVien(
      id: "02", ten: "Tùng", ngaySinh: "10/09/2000", queQuan: "Phú Yên"));
  quanLySV.add(SinhVien(
      id: "03", ten: "Sang", ngaySinh: "26/04/2002", queQuan: "Ninh Hòa"));
  quanLySV.add(SinhVien(
      id: "04", ten: "Uyên", ngaySinh: "12/05/1999", queQuan: "Ninh Thuận"));
  quanLySV.add(SinhVien(
      id: "05", ten: "Chi", ngaySinh: "30/07/1999", queQuan: "Diên Khánh"));
  quanLySV.printInfo();

  quanLySV.delete("01");
  // ignore: avoid_print
  print("Danh sach moi");

  quanLySV.printInfo();
}
