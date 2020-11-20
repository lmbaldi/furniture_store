import 'package:flutter/material.dart';

class DetailText extends StatelessWidget {
  final String text;
  final TextStyle style;

  DetailText({this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right:10, top: 8 ),
      child: _stylizeText(text)
    );
  }

  _stylizeText(text){
    if(style != null){
      return Text(text, style: style);
    }
    return Text(text);
  }
}
