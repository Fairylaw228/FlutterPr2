class ArrivalEntity {
  int? id;
  late String date;
  late int count;
  late int dostavkaId;
  late int productId;

  ArrivalEntity(
      {required this.date,
      required this.count,
      required this.dostavkaId,
      required this.productId});
}
