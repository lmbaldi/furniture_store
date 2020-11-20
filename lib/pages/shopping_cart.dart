import 'package:flutter/material.dart';
import 'package:furniture_store/widgets/app_bar_custom.dart';

class ShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustom(
        title: "ShoppingCart",
        isPageShoppingCart: true,
      ),
      body: Text("We are in the shopping cart"),
    );
  }
}
