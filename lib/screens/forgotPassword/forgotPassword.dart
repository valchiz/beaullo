import 'package:flutter/material.dart';
import 'package:nawali/screens/forgotPassword/components/ForgotPasswordForm.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/stylesheets/sheet.dart';

class ForgotPasswordPage extends StatelessWidget {
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
              TextThemeSheet().largeText(Translations().translate["forgot"]),
              SizedBox(
                height: Dimensions().getHeight(context, 1),
              ),
              TextThemeSheet()
                  .mediumText(Translations().translate["forgot desc"]),
              SizedBox(
                height: Dimensions().getHeight(context, 5),
              ),
              ForgotPasswordForm(
                formKey: formKey,
              )
            ],
          ),
        ));
  }
}
