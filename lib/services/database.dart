// import '../models/order.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// class DatabaseService {
// final String uid;
//   DatabaseService({ this.uid });
//   // collection reference
//  // final CollectionReference orderCollection = Firestore.instance.collection('orders');
//   Future<void> updateOrderData(String notes, String price, String size) async {
//     return await orderCollection.document(uid).setData({
//       'notes': notes,
//       'price': price,
//       'size': size,
//     });
//   }
// }