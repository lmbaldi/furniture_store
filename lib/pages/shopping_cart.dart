import 'package:flutter/material.dart';
import 'package:furniture_store/main.dart';
import 'package:furniture_store/widgets/app_bar_custom.dart';
import 'package:furniture_store/widgets/list_cart.dart';
import 'package:intl/intl.dart';

class ShoppingCart extends StatefulWidget {
  @override
  _ShoppingCartState createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  final brazilianCurrency =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    int valorTotal = _calcularTotal();
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 80,
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'total',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              brazilianCurrency.format(valorTotal),
              style: Theme.of(context).textTheme.headline5,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBarCustom(
        title: "ShoppingCart",
        isPageShoppingCart: true,
      ),
      body: _buildScreen(),
    );
  }

  void update() {
    setState(() {});
  }

  int _calcularTotal() {
    if (Start.itensCart.isNotEmpty) {
      return Start.itensCart
          .map((item) => item.movel.preco * item.qtde)
          .reduce((precoAtual, precoNovo) => precoAtual + precoNovo);
    }
    return 0;
  }

  Widget _buildScreen() {
    if (Start.itensCart.isNotEmpty) {
      return ListCart(update: update);
    } else {
      return Container(
        height: double.infinity,
        alignment: Alignment.center,
        child: Text('Nenhum item no carrinho'),
      );
    }
  }
}
