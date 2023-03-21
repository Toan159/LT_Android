// // import 'package:flutter/src/foundation/key.dart';
// // import 'package:flutter/src/widgets/framework.dart';
// // import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class ListPhoto extends StatefulWidget {
//   const ListPhoto({Key? key}) : super(key: key);

//   @override
//   State<ListPhoto> createState() => _ListPhotoState();
// }

// class _ListPhotoState extends State<ListPhoto> {
//   @override
//   Widget build(BuildContext context) {
//     // return const Placeholder();a
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("List Json"),
//       ),
//       // body: FutureBuilder<List<Photo>?>(
//       //   future: getHttpContent(),
//       //   builder: (context, listPhotosnapshot) {
//       //     if (listPhotosnapshot.hasError) {
//       //       return Center(
//       //         child: Text(
//       //           "Có lỗi xảy ra",
//       //           style: TextStyle(color: Colors.red, fontSize: 15),
//       //         ),
//       //       );
//       //     } else {
//       //       // return listPhotosnapshot.hasData =
//       //       if (listPhotosnapshot.hasData == false) {
//       //         return Center(
//       //           child: Text("Loading..."),
//       //           // child: CirrularProgressIndicator(),),
//       //         );
//       //       } else {
//       //         List<Photo> list = listPhotosnapshot.data!;
//       //         return GirdView.exten(maxCrossAxisExtent: maxCrossAxisExtent);
//       //       }
//       //     }
//       //   },
//       // ),
//       body: FutureBuilder<List<Photo>?>(
//         future: getHttpContent(),
//         builder: (context, listPhotosnapshot) {
//           if (listPhotosnapshot.hasError) {
//             return Center(
//               child: Text(
//                 "Có lỗi xảy ra",
//                 style: TextStyle(color: Colors.red, fontSize: 15),
//               ),
//             );
//           } else {
//             // return listPhotosnapshot.hasData =
//             if (listPhotosnapshot.hasData == false) {
//               return Center(
//                 child: Text("Loading..."),
//                 // child: CirrularProgressIndicator(),),
//               );
//             } else {
//               List<Photo> list = listPhotosnapshot.data!;
//               return GirdView.extents(
//                 maxCrossAxisExtent: 150,
//                 children: Text("data"),
//               );
//             }
//           }
//         },
//       ),
//     );
//   }
// }

// class Photo {}

// getHttpContent() {}
