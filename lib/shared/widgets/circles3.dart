import 'package:flutter/material.dart';
import 'package:nawali/stylesheets/sheet.dart';

class Circle3 extends StatelessWidget {
  final double radius;
  final String url;
  Circle3({
    @required this.radius,
    @required this.url,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Dimensions().getWidth(context, 35),
      height: Dimensions().getHeight(context, radius),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // color: Colors.orange,
        // shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(url),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
