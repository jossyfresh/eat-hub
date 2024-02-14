class CurrentUser {
  String email;
  String password;
  String?name;
  String?phone;
  String?address;
  String?image;

  CurrentUser({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
    required this.address,
    required this.image,
  });
}
