import 'package:flutter/material.dart';
import 'package:furniture_store/main.dart';
import 'package:furniture_store/models/item_cart.dart';
import 'package:furniture_store/models/movel.dart';
import 'package:intl/intl.dart';

class ListCart extends StatefulWidget {
  final Function update;

  ListCart({this.update});

  @override
  _ListCartState createState() => _ListCartState();
}

class _ListCartState extends State<ListCart> {
  final List<ItemCart> cart = Start.itensCart;
  final brazilianCurrency = NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cart.length,
      itemBuilder: (BuildContext context, int index) {
        ItemCart item = cart[index];
        Movel movel = item.movel;

        return Container(
          margin: EdgeInsets.all(16),
          child: Card(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage('utilities/assets/images/${movel.foto}'),
                    height: 90,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 90,
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(movel.titulo, style: Theme.of(context).textTheme.headline3,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(brazilianCurrency.format(movel.preco)),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () => _increaseQuantity(item),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Icon(
                                      Icons.add,
                                      size: 14,
                                    ),
                                  ),
                                ),
                                Text('${item.qtde}'),
                                GestureDetector(
                                  onTap: () => _decreaseQuantity(item),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Icon(
                                      Icons.remove,
                                      size: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _increaseQuantity(ItemCart item) {
    setState(() {
      item.qtde++;
      widget.update();
    });
  }

  void _decreaseQuantity(ItemCart item) {
    if (item.qtde > 1) {
      setState(() {
        item.qtde--;
        widget.update();
      });
    } else {
      _removeItem(item);
    }
  }

  void _removeItem(ItemCart item) {
    setState(() {
      Start.itensCart.remove(item);
      widget.update();
    });
  }
}
