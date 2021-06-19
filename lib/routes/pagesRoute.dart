import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
goToReplacement(Widget page, BuildContext context) {
  Navigator.of(context).pushReplacement(_createRoute(page));
}

goTo(Widget page, BuildContext context) {
  Navigator.of(context).push(_createRoute(page));
}

Route _createRoute(nav) {
  return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => nav,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(0.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween = Tween(begin: begin, end: end);
        var curvedAnimation = CurvedAnimation(
          parent: animation,
          curve: curve,
        );

        return SlideTransition(
          position: tween.animate(curvedAnimation),
          child: child,
        );
      });
}
