import 'package:flutter/material.dart';
import 'package:furniture_store/widgets/app_bar_custom.dart';
import 'package:furniture_store/widgets/list_cart.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustom(
        title: "ShoppingCart",
        isPageShoppingCart: true,
      ),
      body: ListCart(
        update: update
      ),
    );
  }

  update(){
    setState((){});
  }
}
