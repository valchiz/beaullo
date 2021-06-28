import 'package:beaullo/screens/dashboard/components/cardLarge.dart';
import 'package:beaullo/screens/explorePage/explorePage.dart';
import 'package:flutter/material.dart';
// import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:beaullo/screens/dashboard/components/searchBar.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/screens/explorePage/widgets/itemListing.dart';
import 'package:beaullo/screens/explorePage/services/mockData.dart';

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
                      children: List.generate(allItems.length, (index) {
                        return Column(
                          // margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                          children: [
                            GestureDetector(
                              onTap: () {
                                goTo(ExplorePage(), context);
                              },
                              child: Container(
                                width: Dimensions().getWidth(context, 25),
                                height: Dimensions().getHeight(context, 10),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      offset: Offset(5.0, 5.0),
                                      blurRadius: 10.0,
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage(allItems[index]["url"]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              child: TextThemeSheet()
                                  .smallText(allItems[index]["categories"]),
                            )
                          ],
                        );
                      }),
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
                      children: List.generate(allItems.length, (index) {
                        return Container(
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            boxShadow: [],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  goTo(ItemListing(), context);
                                },
                                child: Container(
                                  alignment: Alignment.topRight,
                                  padding:
                                      EdgeInsets.fromLTRB(0.0, 0.0, 7.0, 0.0),
                                  width: Dimensions().getWidth(context, 45),
                                  height: Dimensions().getHeight(context, 20),
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
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextThemeSheet().mediumText(
                                        allItems[index]["brandName"]),
                                    TextThemeSheet()
                                        .smallText(allItems[index]["title"]),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),

                  SizedBox(
                    height: Dimensions().getHeight(context, 5),
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
                    height: Dimensions().getHeight(context, 35),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: List.generate(allItems.length, (index) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    goTo(ItemListing(), context);
                                  },
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    padding:
                                        EdgeInsets.fromLTRB(0.0, 0.0, 7.0, 0.0),
                                    width: Dimensions().getWidth(context, 45),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image:
                                            AssetImage(allItems[index]["url"]),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Container(
                                      width: Dimensions().getWidth(context, 10),
                                      height:
                                          Dimensions().getHeight(context, 10),
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
                                ),
                                Container(
                                  margin: EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextThemeSheet()
                                          .smallText(allItems[index]["title"]),
                                      TextThemeSheet().mediumText(
                                          allItems[index]["brandName"]),
                                      Row(
                                        children: [
                                          TextThemeSheet().mediumText(
                                              allItems[index]["price"]),
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
                          );
                        })),
                  ),

                  SizedBox(
                    height: Dimensions().getHeight(context, 5),
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
                  GestureDetector(
                    onTap: () {
                      goTo(ItemListing(), context);
                    },
                    child: Container(
                      width: Dimensions().getWidth(context, 100),
                      height: Dimensions().getHeight(context, 35),
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                      ),
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(allItems.length, (index) {
                            return Container(
                              margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      goTo(ExplorePage(), context);
                                    },
                                    child: Container(
                                      alignment: Alignment.topRight,
                                      padding: EdgeInsets.fromLTRB(
                                          0.0, 0.0, 7.0, 0.0),
                                      width: Dimensions().getWidth(context, 45),
                                      height:
                                          Dimensions().getHeight(context, 20),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        image: DecorationImage(
                                          image: AssetImage(
                                              allItems[index]["url"]),
                                          fit: BoxFit.cover,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                          const Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Container(
                                        width:
                                            Dimensions().getWidth(context, 10),
                                        height:
                                            Dimensions().getHeight(context, 10),
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
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        TextThemeSheet().smallText(
                                            allItems[index]["title"]),
                                        TextThemeSheet().mediumText(
                                            allItems[index]["brandName"]),
                                        Row(
                                          children: [
                                            TextThemeSheet().mediumText(
                                                allItems[index]["price"]),
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
                            );
                          })),
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 5),
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
                        children: List.generate(allItems.length, (index) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 5.0, 0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    goTo(ItemListing(), context);
                                  },
                                  child: Container(
                                    alignment: Alignment.topRight,
                                    padding:
                                        EdgeInsets.fromLTRB(0.0, 0.0, 7.0, 0.0),
                                    width: Dimensions().getWidth(context, 45),
                                    height: Dimensions().getHeight(context, 20),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image:
                                            AssetImage(allItems[index]["url"]),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Container(
                                      width: Dimensions().getWidth(context, 10),
                                      height:
                                          Dimensions().getHeight(context, 10),
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
                                ),
                                Container(
                                  margin: EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextThemeSheet()
                                          .smallText(allItems[index]["title"]),
                                      TextThemeSheet().mediumText(
                                          allItems[index]["brandName"]),
                                      Row(
                                        children: [
                                          TextThemeSheet().mediumText(
                                              allItems[index]["price"]),
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
                          );
                        })),
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
