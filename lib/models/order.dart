class Order {
  final String date;
  final String restaurantName;
  final String menu;
  final int count;
  final int price;

  const Order({
    required this.date,
    required this.restaurantName,
    required this.menu,
    required this.count,
    required this.price,
  });

  static Order fromJson(json) {
    return Order(
      date: json['date'],
      restaurantName: json['restaurantName'],
      menu: json['menu'],
      count: json['count'],
      price: json['price'],
    );
  }
}
