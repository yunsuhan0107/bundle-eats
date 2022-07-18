class Order {
  final String date;
  final String restaurantName;
  final String food;
  final int count;
  final int price;

  const Order({
    required this.date,
    required this.restaurantName,
    required this.food,
    required this.count,
    required this.price,
  });

  static Order fromJson(json) {
    return Order(
      date: json['date'],
      restaurantName: json['restaurantName'],
      food: json['food'],
      count: json['count'],
      price: json['price'],
    );
  }
}
