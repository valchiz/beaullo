import 'package:flutter/material.dart';
import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/dashboard/dashboard.dart';
import 'package:beaullo/screens/getStarted/getStarted.dart';
import 'package:beaullo/screens/home/home.dart';
import 'package:beaullo/screens/signUp/signUp.dart';
import 'package:beaullo/shared/constants.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/size_config.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class PasscodeSaveForm extends StatefulWidget {
  final int value;
  final formKey;

  const PasscodeSaveForm({
    Key key,
    this.formKey,
    this.value = 0,
  });

  @override
  _PasscodeSaveFormState createState() => _PasscodeSaveFormState();
}

class _PasscodeSaveFormState extends State<PasscodeSaveForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

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
          SizedBox(
            height: Dimensions().getHeight(context, 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: Dimensions().getWidth(context, 15),
                child: TextFormField(
                  autofocus: true,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    print(value);
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: Dimensions().getWidth(context, 15),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    print(value);
                    nextField(value, pin3FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: Dimensions().getWidth(context, 15),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    print(value);
                    nextField(value, pin4FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: Dimensions().getWidth(context, 15),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: true,
                  style: TextStyle(fontSize: 24),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      print(value);
                      pin4FocusNode.unfocus();
                      // print('pin here');
                      // pin = int.parse('$one$two$three$four');
                      // print(pin);
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 10),
          ),
          DefaultButton(
            text: Translations().translate["passcode continue"],
            press: () {
              // setUserFirstTime();
              goTo(TabsPage(), context);
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextThemeSheet().smallThinText(
                  Translations().translate["passcode bottomCall1"]),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  goTo(
                      Dashboard(
                        title: 'Dashboard',
                      ),
                      context);
                },
                child: TextThemeSheet().smallText(
                    Translations().translate["passcode bottomCall2"]),
              ),
            ],
          ),
          Container(
            width: Dimensions().getWidth(context, 10),
            height: Dimensions().getHeight(context, 10),
            decoration: BoxDecoration(
              color: Colors.orange,
              shape: BoxShape.circle,
              // image: DecorationImage(
              //   image: AssetImage('assets/images/finger_print.webp'),
              //   fit: BoxFit.contain,
              // ),
            ),
          ),
          // AddUser(formData['cardNumber'], formData['date'], formData['cvv'],
          //     formData, widget.formKey)
        ],
      ),
    );
  }
}
