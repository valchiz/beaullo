import 'package:flutter/material.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
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
      child: ElevatedButton(
        onPressed: press,
        // color: ColorSet().primaryColor,
        child: TextThemeSheet().regularButton1Text(text),
        style: ElevatedButton.styleFrom(
          primary: ColorSet().primaryColor,
        ),
      ),
    );
  }
}
