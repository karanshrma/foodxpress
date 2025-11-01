import 'package:flutter/material.dart';
List<Map<String, dynamic>> pastOrders = [
  {'name': 'Chicken Biryani', 'price': 299, 'date': '2025-10-28'},
  {'name': 'Cold Coffee', 'price': 149, 'date': '2025-10-20'},
];

class OrdersScreen extends StatelessWidget {
  static route() => MaterialPageRoute(builder: (context) => const OrdersScreen());

  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: pastOrders.length,
          itemBuilder: (context, index) {
            final order = pastOrders[index];
            return Card(
              margin: const EdgeInsets.all(8),
              child: ListTile(
                title: Text(order['name']),
                subtitle: Text('Date: ${order['date']}'),
                trailing: Text('\u20B9${order['price']}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
