import 'package:flutter/material.dart';
import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/addMoney/screens/addCardDetails.dart';
import 'package:beaullo/screens/addMoney/screens/card/components/addCardForm.dart';
import 'package:beaullo/screens/addMoney/screens/card/widgets/allCards.dart';
import 'package:beaullo/screens/forgotPassword/forgotPassword.dart';
import 'package:beaullo/screens/getStarted/getStarted.dart';
import 'package:beaullo/screens/signUp/signUp.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:beaullo/stylesheets/sheet.dart';

import '../../../../../shared/widgets/outline_button.dart';

class AddByCardForm extends StatefulWidget {
  final int value;
  final formKey;
  final formKey2;

  const AddByCardForm({
    Key key,
    this.formKey,
    this.formKey2,
    this.value = 0,
  });

  @override
  _AddByCardFormState createState() => _AddByCardFormState();
}

class _AddByCardFormState extends State<AddByCardForm> {
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
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                prefixIcon: Container(
                  margin: EdgeInsets.only(left: 5),
                  padding: EdgeInsets.only(
                      left: Dimensions().getWidth(context, 1.2),
                      top: Dimensions().getHeight(context, 1.9)),
                  width: Dimensions().getWidth(context, 2),
                  height: Dimensions().getHeight(context, 3),
                  child: Text('NGN',
                      style: TextStyle(
                          color: ColorSet().secondaryColor,
                          fontSize: 14,
                          fontFamily: FontSet().fontFamilyRegular)),
                ),
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                hintText: Translations().translate["cardHint"],
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
              var phone = '+44' + newValue;
              print('phone here');
              print(phone);
              formData['phoneNumber'] = phone;
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
                    '${Translations().translate["equivalent"]}: \$24,000.00'),
              ),
            ],
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 3),
          ),

          AllCards(),

          SecondaryButton(
            text: "Choose Existing Card",
            press: () {
              // setUserFirstTime();
              goToReplacement(SignUpPage(), context);
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          DefaultButton(
            text: "Add new Card",
            press: () {
              // setUserFirstTime();
              goTo(AddCardDetails(), context);
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
