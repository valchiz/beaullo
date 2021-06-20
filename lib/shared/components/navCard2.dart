import 'package:flutter/material.dart';
import 'package:beaullo/shared/widgets/circles2.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class NavCard2 extends StatelessWidget {
  final String title, subTitle, icon;
  NavCard2({@required this.title, @required this.icon, this.subTitle = ''});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 5),
        // color: Colors.blueAccent,
        width: Dimensions().getWidth(context, 100),
        height: Dimensions().getHeight(context, 10),
        child: ListTile(
          leading: Container(
              padding: EdgeInsets.all(1),
              width: Dimensions().getWidth(context, 10),
              child: Circle2(radius: 5, url: icon)),
          title: TextThemeSheet().mediumText(title),
          subtitle: Container(
              width: Dimensions().getWidth(context, 30),
              child: TextThemeSheet().smallText(subTitle)),
          trailing: Icon(Icons.arrow_forward_ios
              // trailing: Container(),
              ),
        ));
  }
}
