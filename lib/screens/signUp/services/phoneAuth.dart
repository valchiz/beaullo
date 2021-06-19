import 'package:firebase_auth/firebase_auth.dart';

class PhoneAuth {
  final String phone;

  const PhoneAuth({this.phone});

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

  Future<String> verifyPhoneNumber() async {
    print('verifying phone number...');
    var vId;
    var firebaseAuth = FirebaseAuth.instance;
    String status;

    final PhoneCodeSent codeSent =
        (String verificationId, [int forceResendingToken]) async {
      vId = verificationId;
      print('Code sent to $phone');
      status = "\nEnter the code sent to " + phone;
      print(status);
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
        phoneNumber: phone,
        timeout: Duration(seconds: 60),
        verificationCompleted: verificationCompleted,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: codeAutoRetrievalTimeout);

    print('v id here');
    print(vId);
    return vId;
  }
}
