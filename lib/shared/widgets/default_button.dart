import 'package:flutter/material.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/stylesheets/sheet.dart';
import '../size_config.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    this.text,
    this.press,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Dimensions().getWidth(context, 100),
      height: Dimensions().getHeight(context, 7),
      child: RaisedButton(
        onPressed: press,
        color: ColorSet().primaryColor,
        child: TextThemeSheet().regularButton1Text(text),
      ),
    );
  }
}
