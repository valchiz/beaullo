import 'package:flutter/material.dart';
import 'package:beaullo/shared/size_config.dart';
import 'package:beaullo/shared/widgets/circles.dart';
import 'package:beaullo/shared/widgets/circles2.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class WalkthroughContent extends StatelessWidget {
  const WalkthroughContent({
    Key key,
    this.mainDescription,
    this.text,
    this.image,
  }) : super(key: key);
  final String mainDescription, text, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Spacer(flex: 10),
          Circle2(radius: 30, url: image),
          Spacer(flex: 5),
          TextThemeSheet().largeWalkthroughText(mainDescription),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            child: TextThemeSheet().mediumWalkthroughText(text),
          ),
        ],
      ),
    );
  }
}
