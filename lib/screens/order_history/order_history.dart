import 'package:flutter/material.dart';
import 'package:bundle_eats/models/order.dart';
import 'dart:convert';

class OrderHistory extends StatefulWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  State<OrderHistory> createState() => _OrderHistoryState();
}

class _OrderHistoryState extends State<OrderHistory> {
  late Future<List<Order>> ordersFuture;

  @override
  void initState() {
    super.initState();
    ordersFuture = _getOrders(context);
  }

  static Future<List<Order>> _getOrders(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/order_history.json');

    final body = json.decode(data);
    return body.map<Order>(Order.fromJson).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주문내역'),
        centerTitle: true,
      ),
      body: Center(
          child: FutureBuilder<List<Order>>(
              future: ordersFuture,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasData) {
                  final orders = snapshot.data!;
                  return _buildOrders(orders);
                } else {
                  return const Text('No data.');
                }
              })),
    );
  }

  Widget _buildOrders(List<Order> orders) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        final order = orders[index];
        final String result = "${order.food} ${order.count}개 ${order.price}원";
        return Card(
          child: ListTile(
            leading: SizedBox(
              height: 50.0,
              width: 50.0,
              child: Image.asset('assets/chicken.jpg'),
            ),
            title: Text(order.restaurantName),
            subtitle: Text(result),
            onTap: () {},
          ),
        );
      },
    );
  }
}
