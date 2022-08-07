class Item {
  final String menu;
  final int price;
  final int count;

  const Item({
    required this.menu,
    required this.price,
    required this.count,
  });

  static Item fromJson(json) {
    return Item(
      menu: json['menu'],
      price: json['price'],
      count: json['count'],
    );
  }
}
