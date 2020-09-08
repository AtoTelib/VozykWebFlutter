
import 'package:flutter/cupertino.dart';

class UsersOrder {
  final String id;
  final String orderId;
  final DateTime createdAt;
  final String userId;
  final String name;
  final String img;
  final String price;
  String date;
  final String paid;
  String status;
  UsersOrder({this.id,@required  this.orderId,@required  this.createdAt, @required  this.userId,@required  this.status, @required this.img, @required  this.name, @required this.price, @required this.date, @required this.paid});
  UsersOrder.fromJson(String id, Map<String, dynamic> data)
      : id = id,
        orderId = data['orderId'],
        userId = data['user_id'],
        status = data['status'],
        name = data['name'],
        img = data['img'],
        price = data['price'],
        date = data['date'],
        paid = data['paid'],
        createdAt = data['created_at']?.toDate();
  Map<String, dynamic> toMap() => {
    "orderId": orderId,
    "created_at": createdAt,
    "user_id": userId,
    "status": status,
    "name": name,
    "img": img,
    "price": price,
    'date': date,
    'paid': paid
  };
}


// DatabaseService<UsersOrder> usersOrderDb = DatabaseService<UsersOrder>("usersOrder",fromDS: (id,data) =>  UsersOrder.fromDS(id,data), toMap:(userOrder) => userOrder.toMap() );
