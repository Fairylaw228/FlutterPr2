import 'package:flutter_application_5/domain/entity/doljnost.dart';

class Consumption extends ConsumptionEntity {
  int? id;
  late String status;
  late int productId;
  late int userId;
  late String date;
  late int count;
  late int issuePointId;

  Consumption(
      {required this.date,
      required this.count,
      required this.productId,
      required this.userId,
      required this.issuePointId,
      required this.status})
      : super(
            date: date,
            count: count,
            productId: productId,
            userId: userId,
            issuePointId: issuePointId,
            status: status);

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'count': count,
      'productId': productId,
      'userId': userId,
      'issuePointId': issuePointId,
      'status': status
    };
  }

  factory Consumption.toFromMap(Map<String, dynamic> json) {
    return Consumption(
        date: json['date'],
        count: json['count'],
        productId: json['productId'],
        userId: json['userId'],
        issuePointId: json['issuePointId'],
        status: json['status']);
  }
}
