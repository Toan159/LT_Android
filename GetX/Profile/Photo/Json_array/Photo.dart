// import 'package:http/http.dart';

import 'dart:convert';

class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnaiUrl;

  Photo(
      {required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnaiUrl});

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
        albumId: "albumId" as int,
        id: "id" as int,
        title: "title" as String,
        url: "url" as String,
        thumbnaiUrl: "thumbnaiUrl" as String);
  }

  get http => null;

  Future<List<Photo>?> fetchPhotos() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/photos');
    // kiểm tra nếu là 200 thì thành công
    if (response.statusCode == 200) {
      List<Photo> listPhoto;
      List<Map<String, dynamic>> list =
          JsonDecoder(response.body) as List<Map<String, dynamic>>;
      listPhoto = list.map((e) => Photo.fromJson(e)).toList();
      return listPhoto;
      // ---------
      // List<Photo> photos;
      // var list = json.decode(response.body) as List;
      // photos = list.map((item) => Photo.fromJson(item)).toList();
      // return photos;
    } else {
      print("Không tải được Album");
      throw Exception("Khong tai duoc Album");
    }
  }
}
