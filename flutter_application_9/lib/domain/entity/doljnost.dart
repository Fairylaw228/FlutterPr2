class ConsumptionEntity {
  int? id;
  late String date;
  late int productId;
  late int issuePointId;
  late int count;
  late int userId;
  late String status;

  ConsumptionEntity(
      {required this.date,
      required this.count,
      required this.productId,
      required this.userId,
      required this.issuePointId,
      required this.status});
}
