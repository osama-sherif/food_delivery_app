class UserModel {
  final String? name, phoneNumber, dateOfBirth;
  final String email, uid;
  const UserModel({
    this.name,
    this.phoneNumber,
    this.dateOfBirth,
    required this.email,
    required this.uid,
  });

  Map<String, dynamic> toJson() {
    return {
      'uid': uid,
      'email': email,
      'name': name,
      'phoneNumber': phoneNumber,
      'dateOfBirth': dateOfBirth,
    };
  }

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      email: json['email'],
      uid: json['uid'],
      name: json['name'],
      phoneNumber: json['phoneNumber'],
      dateOfBirth: json['dateOfBirth'],
    );
  }
}
