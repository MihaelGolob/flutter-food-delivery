import 'package:flutter/material.dart';
import 'package:food_delivery/components/dove_cart_tile.dart';
import 'package:food_delivery/components/general/dove_button.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/pages/payment_page.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final cart = restaurant.cart;
        final theme = Theme.of(context).colorScheme;

        return Scaffold(
          appBar: AppBar(
            title: const Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: theme.inversePrimary,
            actions: [
              IconButton(
                onPressed: () => showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text('Are you sure you want to clear the cart?'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Cancel'),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          restaurant.clearCart();
                        },
                        child: const Text('Yes'),
                      ),
                    ],
                  ),
                ),
                icon: const Icon(Icons.delete_outline),
              ),
            ],
          ),
          body: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    cart.isEmpty
                        ? const Expanded(
                            child: Center(
                              child: Text('Cart is empty ...'),
                            ),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: cart.length,
                              itemBuilder: (context, index) => DoveCartTile(cartItem: cart[index]),
                            ),
                          ),
                    DoveButton(
                      text: 'Go to checkout',
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentPage())),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
