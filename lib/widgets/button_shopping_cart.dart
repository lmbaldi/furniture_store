import 'package:flutter/material.dart';

class ButtonShoppingCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "/shopping_cart");
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(100),
            bottomLeft: Radius.circular(100)
          ),
        ),
        alignment: Alignment.centerRight,
        height: 40.0,
        padding: EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Image(
          height: 35,
          image: AssetImage('utilities/assets/icons/carrinho.png'),
        ),
      ),
    );
  }
}
