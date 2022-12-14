import 'package:flutter_application_5/domain/entity/dostavka.dart';

class Arrival extends ArrivalEntity {
  int? id;
  late String date;
  late int count;
  late int dostavkaId;
  late int productId;

  Arrival(
      {required this.date,
      required this.count,
      required this.dostavkaId,
      required this.productId})
      : super(
            date: date,
            count: count,
            dostavkaId: dostavkaId,
            productId: productId);

  Map<String, dynamic> toMap() {
    return {
      'date': date,
      'count': count,
      'dostavkaId': dostavkaId,
      'productId': productId
    };
  }

  factory Arrival.toFromMap(Map<String, dynamic> json) {
    return Arrival(
        date: json['date'],
        count: json['count'],
        dostavkaId: json['dostavkaId'],
        productId: json['productId']);
  }
}
