// import 'dart:async';
// import 'dart:typed_data';
//
// import 'package:file_saver/file_saver.dart';
// import 'package:firebase_storage/firebase_storage.dart';
//
// class GeneralFirebaseStorageOp {
//   FirebaseStorage storage = FirebaseStorage.instance;
//
//   uploadFile(Uint8List file, String filename, String path,
//       {String? bucket}) async {
// // Create a reference to "mountains.jpg"
//     // if (bucket != null){
//     //   Reference reference = storage.ref();
//     //   reference =
//     //       FirebaseStorage.instanceFor(bucket: "roots-academy-instructor-data")
//     //           .ref();}
//     final fileRef = storage.ref().child(filename);
//
// // Create a reference to 'images/mountains.jpg'
//     final filePathRef = storage.ref().child(path);
//
// // While the file names are the same, the references point to different files
//     assert(fileRef.name == filePathRef.name);
//     assert(fileRef.fullPath != filePathRef.fullPath);
//
//     await filePathRef.putData(file);
//     // storageRef = FirebaseStorage.instance.ref();
//   }
//
//   Future<Uint8List?> downloadFileFromUrl({required String fireStorageUrl}) {
//     final gsReference = storage.refFromURL(fireStorageUrl);
//
//     return gsReference.getData();
//   }
// }
