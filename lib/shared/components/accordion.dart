import 'package:flutter/material.dart';
import 'package:nawali/shared/widgets/circles2.dart';
import 'package:nawali/stylesheets/sheet.dart';

class Accordion extends StatelessWidget {
  final String title, body, icon;
  final dynamic press;
  final int indexPressed, index;
  Accordion(
      {@required this.title,
      @required this.icon,
      this.body,
      this.press,
      this.indexPressed,
      this.index});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: EdgeInsets.only(top: 5),
          color: Colors.white,
          width: Dimensions().getWidth(context, 100),
          // height: Dimensions().getHeight(context, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: Container(
                    padding: EdgeInsets.all(1),
                    width: Dimensions().getWidth(context, 10),
                    child: Circle2(radius: 5, url: icon)),
                title: TextThemeSheet().transcTimeText(title),
                trailing: index == indexPressed
                    ? Icon(Icons.arrow_circle_up)
                    : Icon(Icons.arrow_circle_down),
              ),
              index == indexPressed
                  ? Container(
                      padding: EdgeInsets.only(
                          left: Dimensions().getWidth(context, 20)),
                      child: Text(body))
                  : SizedBox(
                      height: 0,
                    )
            ],
          )),
    );
  }
}
