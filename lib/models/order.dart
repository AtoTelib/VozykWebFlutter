import 'package:firebase_database/firebase_database.dart';

class Order {
  String img;
  String confirmCode;
  String pincode;
  String name;
  String key;
  double startLocLat;
  double startLocLong;
  double endLocLat;
  double endLocLong;
  String status;
  String assignedToUserId;
  String startDate;
  String startTime;
  String gmt;
  String notes;
  String price;

  Order(
      {this.img,
        this.confirmCode,
        this.pincode,
      this.name,
      this.key,
      this.startLocLat,
      this.startLocLong,
      this.endLocLat,
      this.endLocLong,
      this.status,
      this.assignedToUserId,
      this.startDate,
      this.startTime,
      this.gmt,
      this.notes,
      this.price});

  Order.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    img = json['img'];
    confirmCode = json['confirmCode'];
    pincode = json['pincode'];
    startLocLat = json['startLocLat'];
    startLocLong = json['startLocLong'];
    endLocLat = json['endLocLat'];
    endLocLong = json['endLocLong'];
    status = json['status'];
    assignedToUserId = json['assignedToUserId'];
    startDate = json['startDate'];
    startTime = json['startTime'];
    gmt = json['gmt'];
    notes = json['notes'];
    price = json['price'];
  }

  Order.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        img = snapshot.value['img'],
  confirmCode = snapshot.value['confirmCode'],
  pincode = snapshot.value['pincode'],
        name = snapshot.value['name'],
        startLocLat = snapshot.value['startLocLat'],
        startLocLong = snapshot.value['startLocLong'],
        endLocLat = snapshot.value['endLocLat'],
        endLocLong = snapshot.value['endLocLong'],
        status = snapshot.value['status'],
        assignedToUserId = snapshot.value['assignedToUserId'],
        startDate = snapshot.value['startDate'],
        startTime = snapshot.value['startTime'],
        gmt = snapshot.value['gmt'],
        notes = snapshot.value['notes'],
        price = snapshot.value['price'];

  toJson() {
    return {
      "img": img,
      "confirmCode":confirmCode,
      "pincode":pincode,
      "name": name,
      "startLocLat": startLocLat,
      "startLocLong": startLocLong,
      "endLocLat": endLocLat,
      "endLocLong": endLocLong,
      "status": status,
      "assignedToUserId": assignedToUserId,
      "startDate": startDate,
      "startTime": startTime,
      "gmt": gmt,
      "notes": notes,
      "price": price
    };
  }
}

//
//class LocData {
//  double long;
//  double lat;
//  String key;
//
//  LocData({this.long, this.lat, this.key});
//
//  LocData.fromJson(Map<String, dynamic> json) {
//    long = json['long'];
//    lat = json['lat'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['long'] = this.long;
//    data['lat'] = this.lat;
//    return data;
//  }
//
//  LocData.fromSnapshot(DataSnapshot snapshot)
//      : key = snapshot.key,
//        long = snapshot.value['long'],
//        lat = snapshot.value['lat'];
//}
