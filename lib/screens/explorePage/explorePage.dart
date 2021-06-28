import 'package:flutter/material.dart';
// import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:beaullo/screens/dashboard/components/searchBar.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/screens/explorePage/widgets/itemListing.dart';
import 'package:beaullo/screens/explorePage/services/mockData.dart';

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
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                SizedBox(
                  width: Dimensions().getWidth(context, 25),
                ),
                Header(title: 'Explore'),
              ],
            ),
            // Divider(),
            SearchBar(),
            SizedBox(
              height: Dimensions().getHeight(context, 2),
            ),
            Container(
              width: Dimensions().getWidth(context, 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextThemeSheet().smallText("49 results"),
                  SizedBox(
                    width: Dimensions().getWidth(context, 65),
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
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 7.0, 0.0),
                          width: Dimensions().getWidth(context, 90),
                          height: Dimensions().getHeight(context, 40),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            image: DecorationImage(
                              image: AssetImage(allItems[index]["url"]),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(10.0),
                            ),
                          ),
                          child: Container(
                            width: Dimensions().getWidth(context, 10),
                            height: Dimensions().getHeight(context, 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.black38,
                            ),
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
