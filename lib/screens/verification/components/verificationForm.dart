import 'package:flutter/material.dart';
import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/passcodeSave/passcodeSave.dart';
import 'package:beaullo/screens/getStarted/getStarted.dart';
import 'package:beaullo/screens/signUp/signUp.dart';
import 'package:beaullo/shared/constants.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:firebase_auth/firebase_auth.dart';

class VerificationForm extends StatefulWidget {
  final int value;
  final formKey;
  final data;

  const VerificationForm({
    Key key,
    this.formKey,
    this.value = 0,
    this.data,
  });

  @override
  _VerificationFormState createState() => _VerificationFormState();
}

class _VerificationFormState extends State<VerificationForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  String verifyId;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    verifyPhoneNumber();
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

  void sendCodePhoneAuth(verificationId, smsCode) {
    var firebaseAuth = FirebaseAuth.instance;
    String status;
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: smsCode);

    firebaseAuth.signInWithCredential(credential).then((value) {
      if (value.user != null) {
        // setState(() {
        status = 'Authentication successful';
        print(status);
        print(value.user);
        // });
        // onAuthenticationSuccessful();
      } else {
        // setState(() {
        status = 'Invalid code/invalid authentication';
        print(status);
        // });
      }
    }).catchError((error) {
      // setState(() {
      status = 'Something has gone wrong, please try later';
      print(status);
      // });
    });
  }

  void verifyPhoneNumber() async {
    print('verifying phone number...');
    var firebaseAuth = FirebaseAuth.instance;
    String status;

    final PhoneCodeSent codeSent =
        (String verificationId, [int forceResendingToken]) async {
      verifyId = verificationId;
      print('Code sent to ${widget.data["phoneNumber"]}');
      status = "\nEnter the code sent to " + widget.data["phoneNumber"];
      print(status);
      print(verifyId);
    };

    final PhoneCodeAutoRetrievalTimeout codeAutoRetrievalTimeout =
        (String verificationId) {
      String status;

      // setState(() {
      status = "\nAuto retrieval time out";
      print(status);
      // });
    };

    final PhoneVerificationFailed verificationFailed = (authException) {
      String status;
      // setState(() {
      status = '${authException.message}';
      print(status);

      print("Error message: " + status);
      if (authException.message.contains('not authorized')) {
        status = 'Something has gone wrong, please try later';
        print(status);
      } else if (authException.message.contains('Network')) {
        status = 'Please check your internet connection and try again';
        print(status);
      } else {
        status = 'Something has gone wrong, please try later';
        print(status);
      }
    };

    final PhoneVerificationCompleted verificationCompleted =
        (AuthCredential auth) {
      // setState(() {
      status = 'Auto retrieving verification code';
      print(status);
      // });
    };

    await firebaseAuth.verifyPhoneNumber(
        phoneNumber: widget.data["phoneNumber"],
        timeout: Duration(seconds: 60),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);
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
                  // obscureText: true,
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
                  // obscureText: true,
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
                  // obscureText: true,
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
                  // obscureText: true,
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
            text: Translations().translate["verification continue"],
            press: () {
              // setUserFirstTime();
              goTo(PasscodeSave(), context);
            },
          ),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextThemeSheet().smallThinText(
                  Translations().translate["verification bottomCall1"]),
              SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  goTo(PasscodeSave(), context);
                },
                child: TextThemeSheet().smallText(
                    Translations().translate["verification bottomCall2"]),
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
