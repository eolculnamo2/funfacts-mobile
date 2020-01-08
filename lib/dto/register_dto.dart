class RegisterDto {
  String username;
  String avatar;
  String password;
  String firstName;
  String lastName;
  String email;

  RegisterDto(String username, String avatar, String password, String firstName, String lastName, String email) {
    this.username = username;
    this.avatar = avatar;
    this.password = password;
    this.firstName = firstName;
    this.lastName = lastName;
    this.email = email;
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'avatar': avatar,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
    };
  }
}