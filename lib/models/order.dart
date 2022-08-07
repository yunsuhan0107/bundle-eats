import 'package:bundle_eats/models/item.dart';

class Order {
  final String orderID;
  final int year;
  final int month;
  final int day;
  final String time;
  final String address;
  final String phoneNumber;
  final String restaurantName;
  final int orderNumber;
  final List<Item> items;
  final int totalPrice;
  final int deliveryFee;
  final String payment;

  const Order({
    required this.orderID,
    required this.year,
    required this.month,
    required this.day,
    required this.time,
    required this.address,
    required this.phoneNumber,
    required this.restaurantName,
    required this.orderNumber,
    required this.items,
    required this.totalPrice,
    required this.deliveryFee,
    required this.payment,
  });

  static Order fromJson(json) {
    return Order(
      orderID: json['orderID'],
      year: json['year'],
      month: json['month'],
      day: json['day'],
      time: json['time'],
      address: json['address'],
      phoneNumber: json['phoneNumber'],
      restaurantName: json['restaurantName'],
      orderNumber: json['orderNumber'],
      items: List<Item>.from(json['items'].map((i) => Item.fromJson(i))),
      totalPrice: json['totalPrice'],
      deliveryFee: json['deliveryFee'],
      payment: json['payment'],
    );
  }
}
