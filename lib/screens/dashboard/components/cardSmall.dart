import 'package:flutter/material.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:flutter/rendering.dart';

class CardSmall extends StatelessWidget {
  final String url;
  final String title;
  final String subTitle;

  CardSmall({this.title, this.url, this.subTitle});

  Widget build(BuildContext context) {
    return GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: [
          Container(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: Dimensions().getWidth(context, 10),
                      height: Dimensions().getHeight(context, 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   image:
                        //       AssetImage('assets/images/google.jpeg'),
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                    ),
                    TextThemeSheet().transcTitleText('Buy Airtime'),
                    TextThemeSheet().smallCardText('Recharge any phone easily'),
                  ],
                ),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: Dimensions().getWidth(context, 10),
                      height: Dimensions().getHeight(context, 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   image:
                        //       AssetImage('assets/images/google.jpeg'),
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                    ),
                    TextThemeSheet().transcTitleText('Pay a Bill'),
                    TextThemeSheet()
                        .smallCardText('Take care of your essentials'),
                  ],
                ),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: Dimensions().getWidth(context, 10),
                      height: Dimensions().getHeight(context, 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   image:
                        //       AssetImage('assets/images/google.jpeg'),
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                    ),
                    TextThemeSheet().transcTitleText('Payment Link'),
                    TextThemeSheet()
                        .smallCardText('Send money with a simple link'),
                  ],
                ),
              )),
          Container(
              padding: EdgeInsets.all(10),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      width: Dimensions().getWidth(context, 10),
                      height: Dimensions().getHeight(context, 10),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                        // image: DecorationImage(
                        //   image:
                        //       AssetImage('assets/images/google.jpeg'),
                        //   fit: BoxFit.contain,
                        // ),
                      ),
                    ),
                    TextThemeSheet().transcTitleText('Web Payment'),
                    TextThemeSheet().smallCardText('Recharge any phone easily'),
                  ],
                ),
              ))
        ]);
  }
}
