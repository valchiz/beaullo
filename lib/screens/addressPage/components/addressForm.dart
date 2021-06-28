import 'package:beaullo/screens/payment/payment.dart';
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

class AddressForm extends StatefulWidget {
  final int value;
  final formKey;

  const AddressForm({
    Key key,
    this.formKey,
    this.value = 0,
  });

  @override
  _AddressFormState createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> formData = {
      'fullname': null,
      'country': null,
      'state': null,
      'city': null,
      'postalCode': null,
      'houseAddres': null,
    };
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
                focusColor: ColorSet().primaryColor,
                // border: OutlineInputBorder(),
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
                focusColor: ColorSet().primaryColor,
                // border: OutlineInputBorder(),
                hintText: Translations().translate["country"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your country';
              }
              return null;
            },
            onSaved: (String value) {
              formData['country'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            decoration: InputDecoration(
                focusColor: ColorSet().primaryColor,
                // border: OutlineInputBorder(),
                hintText: Translations().translate["state"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your state';
              }
              return null;
            },
            onSaved: (String value) {
              formData['state'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                // prefixIcon: Container(
                //   // margin: EdgeInsets.only(left: 5),
                //   padding: EdgeInsets.only(
                //       left: Dimensions().getWidth(context, 1.2),
                //       top: Dimensions().getHeight(context, 1.9)),
                //   width: Dimensions().getWidth(context, 2),
                //   height: Dimensions().getHeight(context, 3),
                //   // child: Text(
                //   //   '+44',
                //   //   style: TextStyle(
                //   //       color: ColorSet().secondaryColor,
                //   //       fontSize: 14,
                //   //       fontFamily: FontSet().fontFamilyRegular),
                //   // ),
                // ),
                focusColor: ColorSet().primaryColor,
                // border: OutlineInputBorder(),
                hintText: Translations().translate["city"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your city';
              }
              return null;
            },
            onSaved: (String value) {
              formData['city'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            decoration: InputDecoration(
                focusColor: ColorSet().primaryColor,
                // border: OutlineInputBorder(),
                hintText: Translations().translate["postalCode"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your postal code';
              }
              return null;
            },
            onSaved: (String value) {
              formData['postalCode'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          TextFormField(
            decoration: InputDecoration(
                focusColor: ColorSet().primaryColor,
                // border: OutlineInputBorder(),
                hintText: Translations().translate["houseAddress"],
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().mediumFontSize,
                    fontFamily: FontSet().fontFamilyRegular)),
            validator: (value) {
              if (value.isEmpty) {
                return 'please enter your house address';
              }
              return null;
            },
            onSaved: (String value) {
              formData['houseAddress'] = value;
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 4),
          ),
          DefaultButton(
            text: Translations().translate["submit"],
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
              goTo(Payment(), context);
              // }

              // setUserFirstTime();
              //
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),

          // AddUser(formData['cardNumber'], formData['date'], formData['cvv'],
          //     formData, widget.formKey)
        ],
      ),
    );
  }
}
