import 'package:beaullo/authentication/auth.dart';
import 'package:beaullo/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/forgotPassword/forgotPassword.dart';
import 'package:beaullo/screens/getStarted/getStarted.dart';
import 'package:beaullo/screens/signUp/signUp.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class LoginForm extends StatefulWidget {
  final int value;
  final formKey;

  const LoginForm({
    Key key,
    this.formKey,
    this.value = 0,
  });

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  Auth auth = Auth();
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> formData = {
      'cardNumber': null,
      'date': null,
      'cvv': null
    };
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: Translations().translate["login email"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter card number';
              }
              return null;
            },
            onSaved: (String value) {
              formData['cardNumber'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            controller: passwordController,
            decoration: InputDecoration(
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                hintText: Translations().translate["login password"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            obscureText: true,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter card number';
              }
              return null;
            },
            onSaved: (String value) {
              formData['cardNumber'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  goTo(ForgotPasswordPage(), context);
                },
                child: TextThemeSheet().smallForgotText(
                    Translations().translate["forgot password"]),
              ),
            ],
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          DefaultButton(
            text: Translations().translate["create account"],
            press: () async{
              await auth.signIn(email: emailController.text, password: passwordController.text);
              // setUserFirstTime();
              goToReplacement(Dashboard(), context);
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextThemeSheet()
                  .smallThinText(Translations().translate["login bottomCall1"]),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  goTo(SignUpPage(), context);
                },
                child: TextThemeSheet()
                    .smallText(Translations().translate["login bottomCall2"]),
              ),
            ],
          )
          // AddUser(formData['cardNumber'], formData['date'], formData['cvv'],
          //     formData, widget.formKey)
        ],
      ),
    );
  }
}
