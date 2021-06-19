import 'package:flutter/material.dart';
import 'package:nawali/routes/pagesRoute.dart';
import 'package:nawali/screens/getStarted/getStarted.dart';
import 'package:nawali/screens/signUp/signUp.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/shared/widgets/default_button.dart';
import 'package:nawali/stylesheets/sheet.dart';

class ForgotPasswordForm extends StatefulWidget {
  final int value;
  final formKey;

  const ForgotPasswordForm({
    Key key,
    this.formKey,
    this.value = 0,
  });

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
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
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: Translations().translate["forgot email"],
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
          DefaultButton(
            text: Translations().translate["forgot continue"],
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
                  Translations().translate["forgot bottomCall1"]),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  goTo(SignUpPage(), context);
                },
                child: TextThemeSheet()
                    .smallText(Translations().translate["forgot bottomCall2"]),
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
