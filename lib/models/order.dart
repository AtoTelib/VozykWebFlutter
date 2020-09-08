class Order {
  String apikey;
  String assignedToUserId;
  double endLocLat;
  double endLocLong;
  String gmt;
  String img;
  String name;
  String notes;
  String price;
  int size;
  String startDate;
  double startLocLat;
  double startLocLong;
  String startTime;
  String status;
  int volume;

  Order(
      {this.apikey,
        this.assignedToUserId,
        this.endLocLat,
        this.endLocLong,
        this.gmt,
        this.img,
        this.name,
        this.notes,
        this.price,
        this.size,
        this.startDate,
        this.startLocLat,
        this.startLocLong,
        this.startTime,
        this.status,
        this.volume});

  Order.fromJson(Map<String, dynamic> json) {
    apikey = json['apikey'];
    assignedToUserId = json['assignedToUserId'];
    endLocLat = json['endLocLat'];
    endLocLong = json['endLocLong'];
    gmt = json['gmt'];
    img = json['img'];
    name = json['name'];
    notes = json['notes'];
    price = json['price'];
    size = json['size'];
    startDate = json['startDate'];
    startLocLat = json['startLocLat'];
    startLocLong = json['startLocLong'];
    startTime = json['startTime'];
    status = json['status'];
    volume = json['volume'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['apikey'] = this.apikey;
    data['assignedToUserId'] = this.assignedToUserId;
    data['endLocLat'] = this.endLocLat;
    data['endLocLong'] = this.endLocLong;
    data['gmt'] = this.gmt;
    data['img'] = this.img;
    data['name'] = this.name;
    data['notes'] = this.notes;
    data['price'] = this.price;
    data['size'] = this.size;
    data['startDate'] = this.startDate;
    data['startLocLat'] = this.startLocLat;
    data['startLocLong'] = this.startLocLong;
    data['startTime'] = this.startTime;
    data['status'] = this.status;
    data['volume'] = this.volume;
    return data;
  }
}
