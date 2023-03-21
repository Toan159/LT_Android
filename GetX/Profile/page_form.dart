// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// class PageMyForm extends StatefulWidget {
//   const PageMyForm({Key? key}) : super(key: key);

//   @override
//   State<PageMyForm> createState() => _PageMyForm();

// }

// class _PageMyForm extends State<PageMyForm> {
//   GlobalKey<FormState> formState = GlobalKey<FormState>();
//   TextEditingController txtName = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('PageMyForm'),),     
//       body: Form(
//         key: FormState,
//         child: Column(
//           children: [
//             TextFormField(
//               controller: txtName,
//               decoration: InputDecoration(
//                 labelText: "Tên sản phẩm",
//                 hintText: "Nhập tên sản phẩm vào đây"
//               ),
//               // validator: ValidationBuilder().minlenght(), (bị lỗi)
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//             ElevatedButton(onPressed: () {
//               formState.currentState?.validate();
//             }, 
//             child: Text("Save")
//             ),

//           ],
//           ),
//           ],
//         ),
//         ),
//     ),
//   }

//   String? validateString(String? s) { 
//     required String displayText(),
//     return s == null || s.isEmpty ? "Chưa nhập dữ liệu" : null;
//   }
// }
