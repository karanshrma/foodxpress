import 'package:flutter/material.dart';

List<Map<String, dynamic>> cartItems = [
  {'name': 'Margherita Pizza', 'price': 249},
  {'name': 'Cheese Burger', 'price': 199},
];


class CartScreen extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const CartScreen());

  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index);
    });
  }

  int get totalAmount {
    return cartItems.fold(0, (sum, item) => sum + item['price'] as int);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: cartItems.isEmpty
                  ? const Center(child: Text('Your cart is empty'))
                  : ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return ListTile(
                    title: Text(item['name']),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('\u20B9${item['price']}'),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => removeItem(index),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Text(
                    'Total: \u20B9$totalAmount',
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      // Dummy Checkout action
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Checkout clicked - Implement logic here')),
                      );
                    },
                    child: const Text('Checkout'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
