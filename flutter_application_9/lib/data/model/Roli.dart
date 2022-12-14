import 'package:flutter_application_5/domain/entity/roli.dart';

class Roli extends RoleEntity {
  int? id;
  late String roli;

  Roli({required this.roli}) : super(roli: roli);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'roli': roli,
    };
  }

  factory Roli.toFromMap(Map<String, dynamic> json) {
    return Roli(roli: json['roli']);
  }
}
