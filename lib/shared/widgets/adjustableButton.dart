import 'package:flutter/material.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import '../size_config.dart';

class AdjustableButton extends StatelessWidget {
  const AdjustableButton({
    Key key,
    this.text,
    this.press,
    this.width,
    this.height,
    // this.radius,
  }) : super(key: key);
  final String text;
  final Function press;
  final double width;
  final double height;
  // final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorSet().primaryColor,
      // decoration: BoxDecoration(
      //   shape: BoxShape.rectangle,
      //   borderRadius: BorderRadius.all(
      //     Radius.circular(2.0),
      //   ),
      // ),
      child: SizedBox(
        width: Dimensions().getWidth(context, width),
        height: Dimensions().getHeight(context, height),
        child: ElevatedButton(
          onPressed: press,
          // color: ColorSet().primaryColor,
          child: TextThemeSheet().regularButton1Text(text),
        ),
      ),
    );
  }
}
