// import 'dart:typed_data';
// import 'dart:ui' as ui;
//
//
// import 'package:flutter/services.dart';
// import '../models/User.dart';
// import 'package:flutter_web_google_maps/models/order.dart';
// import 'package:flutter_web_google_maps/models/UsersOrder.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../models/order.dart';
//
// class CallApi {
//   final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
//   final Firestore firestore = Firestore.instance;
//
//
//
//   updateOrder(Order order, String uid) async {
//     DateTime dateTime = DateTime.now();
//     order.status = "inProgress1";
//
//     UsersOrder newOrder = UsersOrder(
//         userId: uid, orderId: order.key, createdAt: dateTime, status: order.status, name: order.name, img: order.img, price: order.price, paid: "no", date: dateTime.toString());
//     await usersOrderDb.createItem(newOrder, id: order.key);
//     order.assignedToUserId = uid;
//     if (order != null) {
//       await FirebaseDatabase.instance
//           .reference()
//           .child("orders")
//           .child(order.key)
//           .set(order.toJson());
//     }
//   }
//
//   deleteOrder(Order order, String uid, UsersOrder usersOrder) async {
//     DateTime dateTime = DateTime.now();
//
//     CurrUser user= await userDb.getSingle(uid);
//     user.earning = (int.parse(user.earning)+int.parse(order.price)).toString();
//     user.gigs =  (int.parse(user.gigs)+1).toString();
//     usersOrder.status = "finished";
//     usersOrder.date = dateTime.toString();
//     await usersOrderDb.updateData(order.key, usersOrder.toMap());
//     await FirebaseDatabase.instance
//         .reference()
//         .child("orders")
//         .child(order.key)
//         .remove()
//         .then((_) {
//       print("Delete ${order.key} successful");
// //      setState(() {
// //        _todoList.removeAt(index);
// //      });
//     });
//   }
//
// }
