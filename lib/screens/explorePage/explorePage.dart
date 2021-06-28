import 'package:beaullo/screens/explorePage/services/mockData.dart';
import 'package:flutter/material.dart';
// import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:beaullo/screens/dashboard/components/searchBar.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/screens/explorePage/widgets/itemListing.dart';

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
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  // color: Colors.blueAccent,
                ),
                child: GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.

                  scrollDirection: Axis.vertical,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                  crossAxisCount: 2,
                  children: List.generate(
                    allItems.length,
                    (index) {
                      return GestureDetector(
                        onTap: () {
                          goTo(ItemListing(), context);
                        },
                        child: Container(
                          alignment: Alignment.topRight,
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 0.0),
                          width: Dimensions().getWidth(context, 90),
                          height: Dimensions().getHeight(context, 40),
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
                          child: Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.black38,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
