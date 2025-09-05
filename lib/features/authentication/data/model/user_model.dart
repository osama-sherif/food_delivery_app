class UserModel {
  final String? name, phoneNumber, dateOfBirth;
  final String email, password;
  const UserModel({
    this.name,
    this.phoneNumber,
    this.dateOfBirth,
    required this.email,
    required this.password,
  });
}
