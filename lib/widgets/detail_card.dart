import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:furniture_store/models/movel.dart';
import 'package:furniture_store/widgets/detail_text.dart';

class DetailCard extends StatelessWidget {
  final brazilianCurrency =
      NumberFormat.currency(locale: 'pt_BR', symbol: 'R\$');

  final Movel movel;

  DetailCard({this.movel});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DetailText(text: movel.titulo, style: Theme.of(context).textTheme.headline1,),
          DetailText(text: movel.descricao),
          Container(
            margin: EdgeInsets.all(12),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(brazilianCurrency.format(movel.preco), style: Theme.of(context).textTheme.headline1,),
              FlatButton(
                color: Theme.of(context).primaryColor,
                onPressed: () {},
                child: Text(
                  'Comprar',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
