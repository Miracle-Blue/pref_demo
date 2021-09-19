class User {
  String? name;
  String? email;
  String? pNumber;
  String? password;

  User({this.name, this.pNumber,this.email, this.password});
  User.from({this.email, this.password});


  static User fromJson(Map<String, dynamic> json) => User(
    name: json["name"],
    email: json["email"],
    pNumber: json["pNumber"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "pNumber": pNumber,
    "password": password,
  };

}