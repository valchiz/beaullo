import 'package:flutter/material.dart';
import 'package:beaullo/shared/widgets/circles2.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class NavCard extends StatelessWidget {
  final String title, subTitle, icon;
  final dynamic press;
  NavCard(
      {@required this.title,
      @required this.icon,
      this.subTitle = '',
      this.press});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
          padding: EdgeInsets.only(top: 5),
          color: Colors.white,
          width: Dimensions().getWidth(context, 100),
          height: Dimensions().getHeight(context, 10),
          child: ListTile(
            leading: Container(
                padding: EdgeInsets.all(1),
                width: Dimensions().getWidth(context, 10),
                child: Circle2(radius: 5, url: icon)),
            title: TextThemeSheet().transcTimeText(title),
            subtitle: Container(
                width: Dimensions().getWidth(context, 30),
                child: TextThemeSheet().transcTitleText(subTitle)),
            trailing: Icon(Icons.arrow_forward_ios
                // trailing: Container(),
                ),
          )),
    );
  }
}
