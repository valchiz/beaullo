import 'package:flutter/material.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/stylesheets/sheet.dart';

import 'components/loginForm.dart';

class LoginPage extends StatelessWidget {
  // Translations().translate["splash data"]
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions().getWidth(context, 5)),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Dimensions().getHeight(context, 10),
              ),
              TextThemeSheet().largeText(Translations().translate["login"]),
              SizedBox(
                height: Dimensions().getHeight(context, 1),
              ),
              TextThemeSheet()
                  .mediumText(Translations().translate["login desc"]),
              SizedBox(
                height: Dimensions().getHeight(context, 5),
              ),
              LoginForm(
                formKey: formKey,
              )
            ],
          ),
        ));
  }
}
