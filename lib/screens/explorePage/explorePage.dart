import 'package:beaullo/screens/dashboard/components/cardLarge.dart';
import 'package:beaullo/shared/widgets/circles2.dart';
import 'package:flutter/material.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:beaullo/screens/dashboard/components/searchBar.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/screens/dashboard/components/cardSmall.dart';

import '../../routes/pagesRoute.dart';
import '../../stylesheets/sheet.dart';

class ExplorePage extends StatefulWidget {
  final title;
  static String routeName = "/home";

  const ExplorePage({Key key, this.title});

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
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
            Divider(),
            // SizedBox(
            //   height: Dimensions().getHeight(context, 1),
            // ),
            Container(
              width: Dimensions().getWidth(context, 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextThemeSheet().smallText("49 results"),
                  SizedBox(
                    height: Dimensions().getHeight(context, 2),
                  ),
                  Icon(Icons.filter_list_outlined),
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                // Create a grid with 2 columns. If you change the scrollDirection to
                // horizontal, this produces 2 rows.
                crossAxisCount: 2,
                // Generate 100 widgets that display their index in the List.
                children: [
                  Container(
                    width: Dimensions().getWidth(context, 45),
                    height: Dimensions().getHeight(context, 55),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.blueAccent,
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: Dimensions().getWidth(context, 45),
                          height: Dimensions().getHeight(context, 20),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/woman.jpg'),
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
                        Positioned(
                          bottom: 5.0,
                          left: 5.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextThemeSheet().mediumText('House of Pau'),
                              TextThemeSheet().smallText('Classic Chic wears'),
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
