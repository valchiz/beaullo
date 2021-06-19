import 'package:flutter/material.dart';

class ColorSet {
  final Color primaryColor = Color(0xFF049DD9);
  final Color secondaryColor = Color(0xFF085776);
  final Color tetiaryColor = Color(0xFFcbc526);
}

class FontSet {
  final String fontFamilyLight = 'MontserratLight';
  final String fontFamilyRegular = 'MontserratRegular';
  final String fontFamilyBold = 'MontserratBold';
  final double largeFontSize = 25;
  final double mediumFontSize = 18;
  final double smallFontSize = 12;
  final double headerFontSize = 18;
  final double regularButtonTextSize = 18;
  final double smallButtonTextSize = 12;
}

class TextThemeSheet {
  Widget balance(string) {
    return Text(string,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: ColorSet().primaryColor,
            fontSize: 35,
            fontFamily: FontSet().fontFamilyBold));
  }

  Widget largeWalkthroughText(string) {
    return Text(string,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: ColorSet().primaryColor,
            fontSize: FontSet().largeFontSize,
            fontFamily: FontSet().fontFamilyBold));
  }

  Widget mediumWalkthroughText(string) {
    return Text(string,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: ColorSet().secondaryColor,
            fontSize: FontSet().mediumFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget largeText(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().primaryColor,
            fontSize: FontSet().largeFontSize,
            fontFamily: FontSet().fontFamilyBold));
  }

  Widget headers(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().primaryColor,
            fontSize: FontSet().mediumFontSize,
            fontFamily: FontSet().fontFamilyBold));
  }

  Widget largeSectionText(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().secondaryColor,
            fontSize: FontSet().headerFontSize,
            fontFamily: FontSet().fontFamilyBold));
  }

  Widget mediumText(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().secondaryColor,
            fontSize: FontSet().mediumFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget smallForgotText(string) {
    return Text(string,
        textAlign: TextAlign.end,
        style: TextStyle(
            color: Colors.grey,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget transcTitleText(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().secondaryColor,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget transcTimeText(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().primaryColor,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget transcCreditText(string) {
    return Text(string,
        style: TextStyle(
            color: Colors.greenAccent,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget transcDebitText(string) {
    return Text(string,
        style: TextStyle(
            color: Colors.redAccent,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget smallCardText(string) {
    return Text(string,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: ColorSet().primaryColor,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget smallText(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().primaryColor,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget smallLegalThinText(string) {
    return Text(string,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: ColorSet().secondaryColor,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyLight));
  }

  Widget smallThinText(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().secondaryColor,
            fontSize: FontSet().smallFontSize,
            fontFamily: FontSet().fontFamilyLight));
  }

  Widget smallButtonText(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().primaryColor,
            fontSize: FontSet().smallButtonTextSize,
            fontFamily: FontSet().fontFamilyRegular));
  }

  Widget regularButton2Text(string) {
    return Text(string,
        style: TextStyle(
            color: ColorSet().secondaryColor,
            fontSize: FontSet().regularButtonTextSize,
            fontFamily: FontSet().fontFamilyBold));
  }

  Widget regularButton1Text(string) {
    return Text(string,
        style: TextStyle(
            color: Colors.white,
            fontSize: FontSet().regularButtonTextSize,
            fontFamily: FontSet().fontFamilyRegular));
  }
}

class Dimensions {
  double deviceWidth;
  double deviceHeight;

  double getHeight(BuildContext context, double size) {
    deviceHeight = MediaQuery.of(context).size.height;
    var a = size / 100;
    var newHeight = deviceHeight * a;
    return newHeight;
  }

  double getWidth(BuildContext context, double size) {
    deviceWidth = MediaQuery.of(context).size.width;
    var a = size / 100;
    var newWidth = deviceWidth * a;
    return newWidth;
  }
}
