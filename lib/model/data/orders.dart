import 'package:cloud_firestore/cloud_firestore.dart';

class OrdersList {
late  String orderID;
late Timestamp orderDate;
late String orderStatus;
late String shippingAddress;
late List<dynamic> order;

  OrdersList.fromMap(Map<String, dynamic> data) {
    orderID = data["orderID"];
    orderDate = data["orderDate"];
    orderStatus = data["orderStatus"];
    shippingAddress = data["shippingAddress"];
    order = data["order"];
  }
  Map<String, dynamic> toMap() {
    return {
      'orderID': orderID,
      'orderDate': orderDate,
      'orderStatus': orderStatus,
      'shippingAddress': shippingAddress,
      'order': order.map((i) => i.toMap()).toList(),
    };
  }
}
