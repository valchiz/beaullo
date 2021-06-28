import 'package:flutter/material.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
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
    return Container(
      child: SizedBox(
        width: Dimensions().getWidth(context, 100),
        height: Dimensions().getHeight(context, 7),
        child: OutlinedButton(
          onPressed: press,
          child: TextThemeSheet().regularButton2Text(text),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: ColorSet().primaryColor),
          ),
        ),
      ),
    );
  }
}
