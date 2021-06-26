import 'package:flutter/material.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class CardLarge extends StatelessWidget {
  final String url;
  final String title;
  final double height;
  // final String subTitle;
  CardLarge({this.url, this.title, @required this.height});

  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(10),
      width: Dimensions().getWidth(context, 100),
      height: Dimensions().getHeight(context, height),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            const Radius.circular(20.0),
          ),
          shape: BoxShape.rectangle,
          color: Colors.grey,
          image: DecorationImage(
            image: AssetImage(url),
            fit: BoxFit.cover,
          )),
      child: Stack(
        children: [
          Positioned(
            left: 20.0,
            bottom: 40.0,
            child: Container(
              child: TextThemeSheet().mediumText(title),
            ),
          ),
        ],
      ),
    );
  }
}
