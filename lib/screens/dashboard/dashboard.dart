import 'package:flutter/material.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/circles.dart';
import 'package:beaullo/shared/components/navCard.dart';
import 'package:beaullo/stylesheets/sheet.dart';

import '../../routes/pagesRoute.dart';
import '../../stylesheets/sheet.dart';

class Dashboard extends StatelessWidget {
  final title;
  static String routeName = "/home";

  const Dashboard({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions().getHeight(context, 4),
            ),
            Container(
                height: Dimensions().getHeight(context, 10),
                child: Row(
                  children: [
                    Container(
                      width: Dimensions().getWidth(context, 15),
                      height: Dimensions().getHeight(context, 15),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/larporte.jpeg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: Dimensions().getWidth(context, 1),
                      ),
                      alignment: Alignment.centerLeft,
                      height: Dimensions().getHeight(context, 15),
                      // decoration: BoxDecoration(
                      //   color: Colors.orange,
                      // ),
                      child: TextThemeSheet().headers('Hi. Larporte'),
                    ),
                    GestureDetector(
                      onTap: () {
                        // goTo((), context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: Dimensions().getWidth(context, 30),
                        ),
                        width: Dimensions().getWidth(context, 10),
                        height: Dimensions().getHeight(context, 10),
                        // add box shadow here!!!!!!
                        decoration: BoxDecoration(
                          color: ColorSet().primaryColor,
                          shape: BoxShape.circle,
                          // image: DecorationImage(
                          //   image: AssetImage('assets/images/google.jpeg'),
                          //   fit: BoxFit.contain,
                          // ),
                        ),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: Dimensions().getHeight(context, 4),
            ),
            //
            Expanded(
              child: GridView.count(
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 10),
                              height: Dimensions().getHeight(context, 10),
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/images/larporte.jpeg'),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            TextThemeSheet().transcTitleText('Item Desc'),
                            TextThemeSheet().smallCardText('NGN 5,000'),
                            Icon(Icons.shopping_cart),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 10),
                              height: Dimensions().getHeight(context, 10),
                              // decoration: BoxDecoration(
                              //   color: Colors.grey,
                              //   shape: BoxShape.rectangle,
                              //   image: DecorationImage(
                              //     image:
                              //         AssetImage('assets/images/google.jpeg'),
                              //     fit: BoxFit.contain,
                              //   ),
                              // ),
                            ),
                            TextThemeSheet().transcTitleText('Item Desc'),
                            TextThemeSheet().smallCardText('NGN 5,000'),
                            Icon(Icons.shopping_cart),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 10),
                              height: Dimensions().getHeight(context, 10),
                              // decoration: BoxDecoration(
                              //   color: Colors.grey,
                              //   shape: BoxShape.rectangle,
                              //   image: DecorationImage(
                              //     image:
                              //         AssetImage('assets/images/google.jpeg'),
                              //     fit: BoxFit.contain,
                              //   ),
                              // ),
                            ),
                            TextThemeSheet().transcTitleText('Item Desc'),
                            TextThemeSheet().smallCardText('NGN 5,000'),
                            Icon(Icons.shopping_cart),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 10),
                              height: Dimensions().getHeight(context, 10),
                              // decoration: BoxDecoration(
                              //   color: Colors.grey,
                              //   shape: BoxShape.rectangle,
                              //   image: DecorationImage(
                              //     image:
                              //         AssetImage('assets/images/google.jpeg'),
                              //     fit: BoxFit.contain,
                              //   ),
                              // ),
                            ),
                            TextThemeSheet().transcTitleText('Item Desc'),
                            TextThemeSheet().smallCardText('NGN 5,000'),
                            Icon(Icons.shopping_cart),
                          ],
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
