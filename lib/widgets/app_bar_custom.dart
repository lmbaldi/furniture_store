import 'package:flutter/material.dart';
import 'package:furniture_store/widgets/button_shopping_cart.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool isPageShoppingCart;

  AppBarCustom({this.title, this.isPageShoppingCart});

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  _changePageShoppingCart(bool isPageShoppingCart){
    if (isPageShoppingCart) return Container();
    return ButtonShoppingCart();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      actions: [
        _changePageShoppingCart(isPageShoppingCart),
      ],
    );
  }
}
