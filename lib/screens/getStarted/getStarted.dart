import 'package:flutter/material.dart';
import 'package:nawali/routes/pagesRoute.dart';
import 'package:nawali/screens/login/login.dart';
import 'package:nawali/screens/signUp/signUp.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/shared/widgets/circles2.dart';
import 'package:nawali/shared/widgets/circles3.dart';
import 'package:nawali/shared/widgets/default_button.dart';
import 'package:nawali/shared/widgets/icon_button.dart';
import 'package:nawali/shared/widgets/outline_button.dart';
import 'package:nawali/stylesheets/sheet.dart';

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Dimensions().getWidth(context, 5)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: Dimensions().getHeight(context, 10),
          ),
          Circle3(radius: 25, url: 'assets/images/196px.png'),
          SizedBox(
            height: Dimensions().getHeight(context, 8),
          ),
          TextThemeSheet().largeWalkthroughText(
              Translations().translate["get started bold"]),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextThemeSheet().mediumWalkthroughText(
              Translations().translate["get started subTitle"]),
          SizedBox(
            height: Dimensions().getHeight(context, 5),
          ),
          SecondaryButton(
            text: Translations().translate["get started button1"],
            press: () {
              // setUserFirstTime();
              goToReplacement(SignUpPage(), context);
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 3),
          ),
          IconedButton(
            text: Translations().translate["get started button2"],
            press: () {
              // setUserFirstTime();
              goToReplacement(GetStartedPage(), context);
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextThemeSheet().smallThinText(
                  Translations().translate["get started bottomCall1"]),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  goTo(LoginPage(), context);
                },
                child: TextThemeSheet().smallText(
                    Translations().translate["get started bottomCall2"]),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
