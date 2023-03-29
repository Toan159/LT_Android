import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SinhVien {
  String? id, image, lop, que_quan, nam_sinh, ten;

  SinhVien({
    required this.id,
    this.image,
    this.lop,
    this.que_quan,
    this.nam_sinh,
    this.ten,
  });

// lớp xử lý dũ liệu
  factory SinhVien.fromJson(Map<String, dynamic> json) {
    return SinhVien(
      id: json["id"] as String,
      image: json["image"] as String,
      lop: json["lop"] as String,
      que_quan: json["que_quan"] as String,
      nam_sinh: json["nam_sinh"] as String,
      ten: json["ten"] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "image": image,
      "lop": lop,
      "que_quan": que_quan,
      "nam_sinh": nam_sinh,
      "ten": ten,
    };
  }
}

class SinhVienSnapShot {
  SinhVien? sinhVien;
  DocumentReference? documentReference;

  SinhVienSnapShot({
    required this.sinhVien,
    required this.documentReference,
  });

  factory SinhVienSnapShot.fromSnapShot(DocumentSnapshot docSnapSV) {
    return SinhVienSnapShot(
        sinhVien: SinhVien.fromJson(docSnapSV.data() as Map<String, dynamic>),
        documentReference: docSnapSV.reference);
  }

  Future<void> capNhat(SinhVien sv) async {
    return documentReference!.update(sv.toJson());
  }

  Future<void> xoa() async {
    return documentReference!.delete();
  }

// thêm sinh viên mới
  static Future<DocumentReference> themMoi(SinhVien sv) async {
    return await FirebaseFirestore.instance
        .collection("SinhVien")
        .add(sv.toJson());
  }

// lấy Danh từ FireBase
// map là 1 phương thức: Bình cũ rượu mới
  static Stream<List<SinhVienSnapShot>> dsSVTuFireBase() {
    Stream<QuerySnapshot> qs =
        FirebaseFirestore.instance.collection("SinhVien").snapshots();
    // Chuyển Stream<QS> --> Stream<List<DS>>
    Stream<List<DocumentSnapshot>> listDocSnap =
        qs.map((querySN) => querySN.docs);
    // map1: chuyển Stream<List> --> Stream<List khác kiểu>
    // map2: Chuyển List<DS> --> List<SVS>
    return listDocSnap.map(
      (listDocSnap) => listDocSnap
          .map((docSnap) => SinhVienSnapShot.fromSnapShot(docSnap))
          .toList(),
    );
  }

  static Future<List<SinhVienSnapShot>> dsSVTuFirebaseOneTime() async {
    QuerySnapshot qs =
        await FirebaseFirestore.instance.collection("SinhVien").get();
    return qs.docs
        .map((docsSnap) => SinhVienSnapShot.fromSnapShot(docsSnap))
        .toList();
  }
}
