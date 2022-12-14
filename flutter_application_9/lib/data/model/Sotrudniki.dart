import 'package:flutter_application_5/domain/entity/sotrudniki.dart';

class User extends UserEntity {
  int? id;
  late String name;
  late String patronymic;
  late String surname;
  late int roliId;
  late String phoneNumber;
  late String login;
  late String password;
  late String email;

  User(
      {required this.name,
      required this.surname,
      required this.patronymic,
      required this.login,
      required this.password,
      required this.phoneNumber,
      required this.email,
      required this.roliId})
      : super(
            name: name,
            surname: surname,
            patronymic: patronymic,
            login: login,
            password: password,
            roliId: roliId,
            phoneNumber: phoneNumber,
            email: email);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
      'patronymic': patronymic,
      'login': login,
      'password': password,
      'roliId': roliId,
      'phoneNumber': phoneNumber,
      'email': email
    };
  }

  factory User.toFromMap(Map<String, dynamic> json) {
    return User(
        name: json['name'],
        surname: json['surname'],
        patronymic: json['patronymic'],
        login: json['login'],
        password: json['password'],
        roliId: json['roliId'],
        phoneNumber: json['phoneNumber'],
        email: json['email']);
  }
}
