import 'package:flutter/material.dart';
import 'package:furniture_store/models/movel.dart';
import 'package:furniture_store/pages/detail.dart';
import 'package:furniture_store/widgets/grid_product_image_item.dart';
import 'package:furniture_store/widgets/grid_product_title_item.dart';
import 'package:furniture_store/widgets/grid_product_gradient_item.dart';

class GridProductItem extends StatelessWidget {
  final Movel movel;

  GridProductItem({this.movel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(movel: movel),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 8,
              color: Colors.black12,
            )
          ],
        ),
        margin: EdgeInsets.all(12.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            alignment: Alignment.center,
            children: [
              GridProductImageItem(image: movel.foto),
              GridProductGradientItem(),
              GridProductTitleItem(title: movel.titulo)
            ],
          ),
        ),
      ),
    );
  }
}
