import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Failure{
  final String message;
  Failure({this.message});

  @override
  String toString() {
    return this.message;
  }

}


class Auth{

  FirebaseAuth auth = FirebaseAuth.instance;

  Future<UserCredential> signUp({String email, String password}) async{

    try{
      final user = auth.createUserWithEmailAndPassword(email: email, password: password);
      return user;
    } on FirebaseAuthException{
      throw Failure(message: "Firebase Authenticatoin Failed");
    } on SocketException{
      throw Failure(message: "You're not connected to the internet");
    }
    catch(e){
      throw Failure(message: e.toString());

    }
  }



  Future<UserCredential> signIn({String email, String password}) async{

    try{
      final user = auth.signInWithEmailAndPassword(email: email, password: password);
      return user;
    } on FirebaseAuthException{
      throw Failure(message: "Firebase Authenticatoin Failed");
    } on SocketException{
      throw Failure(message: "You're not connected to the internet");
    }
    catch(e){
      throw Failure(message: e.toString());

    }
  }


}
