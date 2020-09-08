

class CurrUser{
  // 1
  String name;
  String key;
  String email;
  String photoUrl;
  String phone_num;
  String earning;
  String fees;
  String age;
  String car_model;
  String car_make;
  String car_lisence;
  String car_color;
  String gigs;
  String id;
  String capacity;
  String weight;

  CurrUser(this.car_model, this.car_make, this.car_lisence, this.car_color,
      this.name, this.email, this.photoUrl, this.phone_num,
      this.earning, this.fees, this.age, this.gigs, this.capacity, this.weight,);

  CurrUser.fromJson(String id, Map<String, dynamic> data)
      : id = id,
        car_model = data['car_model'],
        car_make = data['car_make'],
        car_lisence = data['car_lisence'],
        car_color = data['car_color'],
        name = data['name'],
        email = data['email'],
        photoUrl = data['photoUrl'],
        phone_num = data['phone_num'],
        earning = data['earning'],
        fees = data['fees'],
        age = data['age'],
        capacity = data['capacity'],
        weight = data['weight'],
        gigs = data['gigs'];

  Map<String, dynamic> toMap() => {
    "car_model": car_model,
    "car_make":car_make,
    "car_lisence":car_lisence,
    "car_color": car_color,
    "name": name,
    "email": email,
    "photoUrl": photoUrl,
    "phone_num": phone_num,
    "earning": earning,
    "fees": fees,
    "age": age,
    "gigs": gigs,
    "capacity": capacity,
    "weight": weight
  };

}
// DatabaseService<CurrUser> userDb = DatabaseService<CurrUser>("Users",fromDS: (id,data) =>  CurrUser.fromJson(id,data), toMap:(user) => user.toMap() );





