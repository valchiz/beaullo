import 'package:beaullo/screens/dashboard/components/cardLarge.dart';
import 'package:beaullo/screens/explorePage/explorePage.dart';
import 'package:beaullo/shared/widgets/circles2.dart';
import 'package:flutter/material.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:beaullo/screens/dashboard/components/searchBar.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/screens/dashboard/components/cardSmall.dart';

import '../../routes/pagesRoute.dart';
import '../../stylesheets/sheet.dart';

class Dashboard extends StatelessWidget {
  final title;
  static String routeName = "/home";

  const Dashboard({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(
              height: Dimensions().getHeight(context, 4),
            ),
            // Icon(Icons.menu),
            Row(
              children: [
                Header(title: 'Beaullo'),
                SizedBox(
                  width: Dimensions().getWidth(context, 3),
                ),
                SearchBar(),
              ],
            ),

            SizedBox(
              height: Dimensions().getHeight(context, 1),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: Dimensions().getHeight(context, 1),
                  ),
                  CardLarge(
                      url: 'assets/images/woman.jpg',
                      title: "Find what you'd love",
                      height: 50),
                  SizedBox(
                    height: Dimensions().getHeight(context, 4),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: Dimensions().getWidth(context, 100),
                    child: Row(
                      children: [
                        SizedBox(
                          height: Dimensions().getHeight(context, 8),
                        ),
                        TextThemeSheet().mediumText("Popular Categories"),
                        SizedBox(
                          width: Dimensions().getWidth(context, 25),
                        ),
                        GestureDetector(
                          onTap: () {
                            goTo(ExplorePage(), context);
                          },
                          child: TextThemeSheet().smallText("See all"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 1),
                  ),
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    height: Dimensions().getHeight(context, 15),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      // color: Colors.amberAccent,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          // margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 25),
                              height: Dimensions().getHeight(context, 10),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset.zero,
                                    blurRadius: 0.0,
                                  )
                                ],
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/woman.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              child: TextThemeSheet().smallText('Men wears'),
                            )
                          ],
                        ),
                        Column(
                          // margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 25),
                              height: Dimensions().getHeight(context, 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.blueAccent,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/woman.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              child: TextThemeSheet().smallText('Women wears'),
                            )
                          ],
                        ),
                        Column(
                          // margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 25),
                              height: Dimensions().getHeight(context, 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.blueAccent,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/woman.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              child: TextThemeSheet().smallText('Weddings'),
                            )
                          ],
                        ),
                        Column(
                          // margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 25),
                              height: Dimensions().getHeight(context, 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.blueAccent,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/woman.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              child: TextThemeSheet().smallText('Traditional'),
                            )
                          ],
                        ),
                        Column(
                          // margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 25),
                              height: Dimensions().getHeight(context, 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.blueAccent,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/woman.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              child: TextThemeSheet().smallText('Corporate'),
                            )
                          ],
                        ),
                        Column(
                          // margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          children: [
                            Container(
                              width: Dimensions().getWidth(context, 25),
                              height: Dimensions().getHeight(context, 10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                // color: Colors.blueAccent,
                                image: DecorationImage(
                                  image: AssetImage('assets/images/woman.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              child:
                                  TextThemeSheet().smallText('Children wears'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: Dimensions().getHeight(context, 4),
                  ),
                  //Third Section
                  Container(
                    alignment: Alignment.centerLeft,
                    width: Dimensions().getWidth(context, 100),
                    child: Row(
                      children: [
                        TextThemeSheet().mediumText("Top Brands"),
                        SizedBox(
                          width: Dimensions().getWidth(context, 45),
                        ),
                        GestureDetector(
                          onTap: () {
                            goTo(ExplorePage(), context);
                          },
                          child: TextThemeSheet().smallText("See all"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 3),
                  ),
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    height: Dimensions().getHeight(context, 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      // color: Colors.amberAccent,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            boxShadow: [],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 45),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().mediumText('House of Pau'),
                                    TextThemeSheet()
                                        .smallText('Classic Chic wears'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 45),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().mediumText('Yomi Casuals'),
                                    TextThemeSheet().smallText("Men's wear"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 45),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet()
                                        .mediumText('Reyaansh Patel'),
                                    TextThemeSheet().smallText('Casual wears'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: Dimensions().getHeight(context, 4),
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    width: Dimensions().getWidth(context, 100),
                    child: Row(
                      children: [
                        TextThemeSheet().mediumText("New Trends"),
                        SizedBox(
                          width: Dimensions().getWidth(context, 45),
                        ),
                        GestureDetector(
                          onTap: () {
                            goTo(ExplorePage(), context);
                          },
                          child: TextThemeSheet().smallText("See all"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 3),
                  ),
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    height: Dimensions().getHeight(context, 45),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 45),
                                    height: Dimensions().getHeight(context, 30),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().smallText('Dashiki'),
                                    TextThemeSheet().mediumText('Yomi Casuals'),
                                    Row(
                                      children: [
                                        TextThemeSheet().mediumText("\$500"),
                                        SizedBox(
                                          width: Dimensions()
                                              .getWidth(context, 12),
                                        ),
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 45),
                                    height: Dimensions().getHeight(context, 30),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet()
                                        .smallText('Spagetthi Straps'),
                                    TextThemeSheet().mediumText('Mild Touch'),
                                    Row(
                                      children: [
                                        TextThemeSheet().mediumText("\$500"),
                                        SizedBox(
                                          width: Dimensions()
                                              .getWidth(context, 12),
                                        ),
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 45),
                                    height: Dimensions().getHeight(context, 30),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet()
                                        .smallText('Sweet Girl Suit'),
                                    TextThemeSheet()
                                        .mediumText("Today's Fashion"),
                                    Row(
                                      children: [
                                        TextThemeSheet().mediumText("\$500"),
                                        SizedBox(
                                          width: Dimensions()
                                              .getWidth(context, 12),
                                        ),
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(
                    height: Dimensions().getHeight(context, 4),
                  ),
                  //Fourth Section
                  Container(
                    alignment: Alignment.centerLeft,
                    width: Dimensions().getWidth(context, 100),
                    child: Row(
                      children: [
                        TextThemeSheet().mediumText("Others are shopping"),
                        SizedBox(
                          width: Dimensions().getWidth(context, 25),
                        ),
                        GestureDetector(
                          onTap: () {
                            goTo(ExplorePage(), context);
                          },
                          child: TextThemeSheet().smallText("See all"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 3),
                  ),
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    height: Dimensions().getHeight(context, 35),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: Dimensions().getWidth(context, 40),
                                  height: Dimensions().getHeight(context, 20),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/woman.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(10.0),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10.0,
                                  right: 10.0,
                                  child: Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.black38,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextThemeSheet().smallText('Classic Chic'),
                                  TextThemeSheet().mediumText('Slim Fit Jean'),
                                  Row(
                                    children: [
                                      TextThemeSheet().mediumText("\$500"),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 10),
                                      ),
                                      Icon(
                                        Icons.shopping_bag_outlined,
                                        color: Colors.red,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 40),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().smallText('Classic Chic'),
                                    TextThemeSheet()
                                        .mediumText('Slim Fit Jean'),
                                    Row(
                                      children: [
                                        TextThemeSheet().mediumText("\$500"),
                                        SizedBox(
                                          width: Dimensions()
                                              .getWidth(context, 10),
                                        ),
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 40),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().smallText('Classic Chic'),
                                    TextThemeSheet()
                                        .mediumText('Slim Fit Jean'),
                                    Row(
                                      children: [
                                        TextThemeSheet().mediumText("\$500"),
                                        SizedBox(
                                          width: Dimensions()
                                              .getWidth(context, 10),
                                        ),
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 4),
                  ),
                  //Fourth Section
                  Container(
                    alignment: Alignment.centerLeft,
                    width: Dimensions().getWidth(context, 100),
                    child: Row(
                      children: [
                        TextThemeSheet().mediumText("Popular Demands"),
                        SizedBox(
                          width: Dimensions().getWidth(context, 25),
                        ),
                        GestureDetector(
                          onTap: () {
                            goTo(ExplorePage(), context);
                          },
                          child: TextThemeSheet().smallText("See all"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 3),
                  ),
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    height: Dimensions().getHeight(context, 35),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 40),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().smallText('Classic Chic'),
                                    TextThemeSheet()
                                        .mediumText('Slim Fit Jean'),
                                    Row(
                                      children: [
                                        TextThemeSheet().mediumText("\$500"),
                                        SizedBox(
                                          width: Dimensions()
                                              .getWidth(context, 10),
                                        ),
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 40),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().smallText('Classic Chic'),
                                    TextThemeSheet()
                                        .mediumText('Slim Fit Jean'),
                                    Row(
                                      children: [
                                        TextThemeSheet().mediumText("\$500"),
                                        SizedBox(
                                          width: Dimensions()
                                              .getWidth(context, 10),
                                        ),
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: Dimensions().getWidth(context, 40),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/woman.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10.0,
                                    right: 10.0,
                                    child: Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.black38,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().smallText('Classic Chic'),
                                    TextThemeSheet()
                                        .mediumText('Slim Fit Jean'),
                                    Row(
                                      children: [
                                        TextThemeSheet().mediumText("\$500"),
                                        SizedBox(
                                          width: Dimensions()
                                              .getWidth(context, 10),
                                        ),
                                        Icon(
                                          Icons.shopping_bag_outlined,
                                          color: Colors.red,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
