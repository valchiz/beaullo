import 'package:flutter/material.dart';
import 'package:nawali/screens/signUp/services/phoneAuth.dart';
import 'package:nawali/screens/verification/components/verificationForm.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/stylesheets/sheet.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Verification extends StatelessWidget {
  // Translations().translate["splash data"]
  final dynamic userForm;
  Verification({Key key, @required this.userForm}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  String verifyId;
  void initState() {}

  void sendCode() async {
    print('user form here');
    print(this.userForm);
  }

  @override
  Widget build(BuildContext context) {
    sendCode();
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
              TextThemeSheet()
                  .largeText(Translations().translate["verification"]),
              SizedBox(
                height: Dimensions().getHeight(context, 1),
              ),
              TextThemeSheet()
                  .mediumText(Translations().translate["verification desc"]),
              TextThemeSheet().mediumText(this.userForm["phoneNumber"]),
              SizedBox(
                height: Dimensions().getHeight(context, 5),
              ),
              VerificationForm(
                formKey: formKey,
                data: this.userForm,
              )
            ],
          ),
        ));
  }
}
