import 'package:flutter/material.dart';

class GridProductImageItem extends StatelessWidget {
  final String image;

  GridProductImageItem({this.image});

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        fit: BoxFit.cover,
        image: AssetImage('utilities/assets/images/$image'),
      ),
    );
  }
}
