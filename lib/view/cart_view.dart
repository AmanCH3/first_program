import 'package:first_program/common/common_card_view.dart';
import 'package:first_program/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: 400, // increased height for visibility
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    for (int i = 0; i < 100; i++)
                      GestureDetector(
                        onTap: () {
                          showMySnackbar(
                            context: context,
                            content: 'Card $i',
                            color: i % 2 == 0 ? Colors.blue : Colors.red,
                          );
                        },
                        child: CommonCardView(
                          title: 'Card $i',
                          color: i % 2 == 0 ? Colors.blue : Colors.red,
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
