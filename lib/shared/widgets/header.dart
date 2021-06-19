import 'package:flutter/material.dart';
import 'package:nawali/stylesheets/sheet.dart';

class Header extends StatelessWidget {
  final String title;
  Header({
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Dimensions().getHeight(context, 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: Dimensions().getWidth(context, 1),
              ),
              alignment: Alignment.centerLeft,
              height: Dimensions().getHeight(context, 15),
              // decoration: BoxDecoration(
              //   color: Colors.orange,
              // ),
              child: TextThemeSheet().headers(title),
            ),
          ],
        ));
  }
}
