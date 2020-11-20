import 'package:flutter/material.dart';
import 'package:furniture_store/models/movel.dart';
import 'package:furniture_store/widgets/grid_product_item.dart';

class GridProducts extends StatelessWidget {

  final furnitures;


  GridProducts({this.furnitures});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: furnitures.length,
      itemBuilder: (context, index)  {
        final movel = Movel.fromJson(furnitures[index]);
        return GridProductItem(
          movel: movel,
        );
      },
    );
  }
}
