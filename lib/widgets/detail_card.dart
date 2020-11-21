import 'package:flutter/material.dart';
import 'package:furniture_store/main.dart';
import 'package:furniture_store/models/item_cart.dart';
import 'package:intl/intl.dart';
import 'package:furniture_store/models/movel.dart';
import 'package:furniture_store/widgets/detail_text.dart';

class DetailCard extends StatelessWidget {
  final brazilianCurrency =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  final Movel movel;
  final Function updatePage;

  DetailCard({this.movel, this.updatePage});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailText(
            text: movel.titulo,
            style: Theme.of(context).textTheme.headline1,
          ),
          DetailText(text: movel.descricao),
          Container(
            margin: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  brazilianCurrency.format(movel.preco),
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {
                    _checkItemListCart(
                        Start.itensCart, ItemCart(movel: movel, qtde: 1));
                  },
                  child: Text(
                    'Comprar',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _addItemCart(ItemCart item) {
    Start.itensCart.add(item);
    updatePage();
  }

  void _checkItemListCart(List<ItemCart> list, ItemCart item) {
    int findIndex = list.indexWhere((item) => item.movel == movel);
    if (findIndex >= 0) {
      list[findIndex].qtde = list[findIndex].qtde + 1;
    } else {
      _addItemCart(item);
    }
  }
}
