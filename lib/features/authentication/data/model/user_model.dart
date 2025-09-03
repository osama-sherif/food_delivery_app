class UserModel {
  final String email, password, name, phoneNumber, dateOfBirth;

  const UserModel(
    this.name,
    this.phoneNumber,
    this.dateOfBirth, {
    required this.email,
    required this.password,
  });
}
