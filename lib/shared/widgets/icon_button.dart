import 'package:flutter/material.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/shared/widgets/circles.dart';
import 'package:nawali/stylesheets/sheet.dart';
import '../size_config.dart';

class IconedButton extends StatelessWidget {
  const IconedButton({
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: Dimensions().getWidth(context, 5),
              height: Dimensions().getHeight(context, 5),
              decoration: BoxDecoration(
                color: Colors.orange,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/google.jpeg'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            TextThemeSheet().regularButton1Text(text),
          ],
        ),
      ),
    );
  }
}
