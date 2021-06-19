import 'package:flutter/material.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/stylesheets/sheet.dart';
import '../size_config.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
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
      child: OutlineButton(
        onPressed: press,
        color: ColorSet().primaryColor,
        child: TextThemeSheet().regularButton2Text(text),
      ),
    );
  }
}
