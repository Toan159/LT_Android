import 'package:cloud_firestore/cloud_firestore.dart';

class SinhVien {
  String? id, ten, lop, que_quan, nam_sinh;

  SinhVien(
      {required this.id, this.ten, this.lop, this.que_quan, this.nam_sinh});

  factory SinhVien.fromJson(Map<String, dynamic> json) {
    return SinhVien(
      id: json['id'] as String,
      ten: json['ten'] as String,
      lop: json['lop'] as String,
      que_quan: json['que_quan'] as String,
      nam_sinh: json['nam_sinh'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'ten': ten,
      'lop': lop,
      'que_quan': que_quan,
      'nam_sinh': nam_sinh,
    };
  }
}

class SinhVienSnapShot {
  SinhVien? sinhVien;
  DocumentReference? docRef;

  SinhVienSnapShot({required this.sinhVien, required this.docRef});

  factory SinhVienSnapShot.fromSnapShot(DocumentSnapshot docSnap) {
    return SinhVienSnapShot(
      sinhVien: SinhVien.fromJson(docSnap.data() as Map<String, dynamic>),
      docRef: docSnap.reference,
    );
  }

  Future<void> capNhat(SinhVien sv) async {
    await docRef!.update(sv.toJson());
  }

  Future<void> delete() async {
    await docRef!.delete();
  }

  static void addNew(SinhVien sv) {
    FirebaseFirestore.instance.collection('SinhVien').add(sv.toJson());
  }

  static Stream<List<SinhVienSnapShot>> dsSVTuFirebase() {
    Stream<QuerySnapshot> qs =
        FirebaseFirestore.instance.collection('SinhVien').snapshots();
    Stream<List<DocumentSnapshot>> listDocSnap = qs.map((qsnap) => qsnap.docs);
    return listDocSnap.map((lds) =>
        lds.map((docSnap) => SinhVienSnapShot.fromSnapShot(docSnap)).toList());
  }
}
