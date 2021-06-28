import 'package:flutter/material.dart';
import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/getStarted/getStarted.dart';
import 'package:beaullo/screens/signUp/services/phoneAuth.dart';
import 'package:beaullo/screens/verification/verification.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:beaullo/stylesheets/sheet.dart';

import '../../dashboard/dashboard.dart';
import '../../home/home.dart';

class SignUpForm extends StatefulWidget {
  final int value;
  final formKey;

  const SignUpForm({
    Key key,
    this.formKey,
    this.value = 0,
  });

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> formData = {
      'fullname': null,
      'email': null,
      'gender': null,
      'phoneNumber': null,
      'password': null,
      'confirmPassword': null,
    };
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: Translations().translate["signup fullname"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter full name';
              }
              return null;
            },
            onSaved: (String value) {
              formData['fullname'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            decoration: InputDecoration(
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                hintText: Translations().translate["signup email"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter email';
              }
              return null;
            },
            onSaved: (String value) {
              formData['email'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            decoration: InputDecoration(
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                hintText: Translations().translate["signup gender"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter gender';
              }
              return null;
            },
            onSaved: (String value) {
              formData['gender'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                prefixIcon: Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.only(
                      left: Dimensions().getWidth(context, 1.2),
                      top: Dimensions().getHeight(context, 1.9)),
                  width: Dimensions().getWidth(context, 2),
                  height: Dimensions().getHeight(context, 3),
                  child: Text('+44',
                      style: TextStyle(
                          color: ColorSet().secondaryColor,
                          fontSize: 14,
                          fontFamily: FontSet().fontFamilyRegular)),
                ),
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                hintText: Translations().translate["signup phonenumber"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter phone number';
              }
              return null;
            },
            onSaved: (String value) {
              var intValue = int.parse(value);
              print(intValue);
              var newValue = intValue.toString();
              var phone = '+234' + newValue;
              print('phone here');
              print(phone);
              formData['phoneNumber'] = phone;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            decoration: InputDecoration(
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                hintText: Translations().translate["signup password"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter password';
              }
              return null;
            },
            onSaved: (String value) {
              formData['password'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          // TextFormField(
          //   decoration: InputDecoration(
          //       focusColor: Colors.green,
          //       border: OutlineInputBorder(),
          //       hintText: Translations().translate["signup confirmpassword"],
          //       hintStyle: TextStyle(
          //           color: Colors.grey,
          //           fontSize: FontSet().mediumFontSize,
          //           fontFamily: FontSet().fontFamilyRegular)),
          //   validator: (value) {
          //     if (value.isEmpty) {
          //       return 'Confirm password';
          //     }
          //     return null;
          //   },
          //   onSaved: (String value) {
          //     formData['confirmPassword'] = value;
          //   },
          // ),
          // SizedBox(
          //   height: Dimensions().getHeight(context, 2),
          // ),
          DefaultButton(
            text: Translations().translate["create account"],
            press: () {
              // if (widget.formKey.currentState.validate()) {
              //   widget.formKey.currentState.save(); //onSaved is called!
              //   print(formData);
              // PhoneAuth(phone: '+234 7051154032').verifyPhoneNumber();
              // goTo(
              //     Verification(
              //       userForm: formData,
              //     ),
              //     context);
              goTo(TabsPage(), context);
              // }

              // setUserFirstTime();
              //
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextThemeSheet()
              .smallLegalThinText(Translations().translate["legal"]),
          // AddUser(formData['cardNumber'], formData['date'], formData['cvv'],
          //     formData, widget.formKey)
        ],
      ),
    );
  }
}
