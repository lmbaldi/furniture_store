import 'package:flutter/material.dart';
import 'package:furniture_store/main.dart';
import 'package:furniture_store/widgets/badge_cart.dart';

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
        child: _showBadgeCart(),
      ),
    );
  }

  _showBadgeCart(){
    if(Start.itensCart.length > 0){
      return Stack(
          children: [
            Image(
              height: 35,
              image: AssetImage('utilities/assets/icons/carrinho.png'),
            ),
            BadgeCart(),
          ]
      );
    }
    return Image(
      height: 35,
      image: AssetImage('utilities/assets/icons/carrinho.png'),
    );
  }
}
