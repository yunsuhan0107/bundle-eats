import 'package:flutter/material.dart';
import 'package:bundle_eats/models/order.dart';

class OrderDetail extends StatelessWidget {
  final Order order;

  const OrderDetail({
    Key? key,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('주문상세'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  order.restaurantName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "주문일시: ${order.year}년 ${order.month}월 ${order.day}일 ${order.time}",
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "주문번호: ${order.orderID}",
                  style: const TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: order.items.length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${order.items[index].menu} ${order.items[index].count}개",
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "${order.items[index].price}원",
                          style: const TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "배달비",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "${order.deliveryFee}",
                      style: const TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 1,
                  height: 1,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "총 결제금액",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      "${order.totalPrice + order.deliveryFee}원",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "결제방법",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    Text(
                      order.payment,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 1,
            color: Colors.black,
          ),
          Container(
            padding: const EdgeInsets.all(20.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "배달주소",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  order.address,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 0.5,
                  height: 0.5,
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "전화번호",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  order.phoneNumber,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  thickness: 0.5,
                  height: 0.5,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
