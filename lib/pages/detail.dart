import 'package:flutter/material.dart';
import 'package:furniture_store/models/movel.dart';
import 'package:furniture_store/widgets/app_bar_custom.dart';
import 'package:furniture_store/widgets/detail_card.dart';

class Details extends StatefulWidget {

  final Movel movel;

  Details({this.movel});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  @override
  void initState() {
    super.initState();
  }

  update(){
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('utilities/assets/images/${widget.movel.foto}'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBarCustom(
          title: '',
          isPageShoppingCart: false,
        ),
        body: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.all(12),
            height: 220,
            child: DetailCard(movel: widget.movel, updatePage: update),
          ),
        ),
      ),
    );
  }
}
