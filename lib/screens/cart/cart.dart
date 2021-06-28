import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/addressPage/address.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:beaullo/screens/explorePage/services/mockData.dart';

class Cart extends StatelessWidget {
  // Translations().translate["splash data"]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Dimensions().getHeight(context, 4),
              ),
              Header(title: 'Cart'),
              Divider(),
              SizedBox(
                height: Dimensions().getHeight(context, 1),
              ),
              TextThemeSheet()
                  .largeSectionText('You have 2 Items in your cart'),
              Expanded(
                child: ListView(
                  children: List.generate(allItems.length, (index) {
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.topLeft,
                            // padding: EdgeInsets.fromLTRB(0.0, 0.0, 7.0, 0.0),
                            width: Dimensions().getWidth(context, 30),
                            height: Dimensions().getHeight(context, 15),
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
                                Icons.cancel,
                                // color: Colors.black38,
                              ),
                            ),
                          ),
                          Container(
                            width: Dimensions().getWidth(context, 25),
                            margin: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextThemeSheet()
                                    .mediumText(allItems[index]["title"]),
                                TextThemeSheet()
                                    .smallText(allItems[index]["brandName"]),
                              ],
                            ),
                          ),
                          Container(
                            width: Dimensions().getWidth(context, 15),
                            margin: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextThemeSheet()
                                    .mediumText(allItems[index]["price"]),
                                TextThemeSheet()
                                    .smallText(allItems[index]["title"]),
                              ],
                            ),
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              Divider(),
              SizedBox(
                height: Dimensions().getHeight(context, 2),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextThemeSheet().smallText(
                      Translations().translate["total"],
                    ),
                    SizedBox(
                      width: Dimensions().getWidth(context, 50),
                    ),
                    TextThemeSheet().mediumText("\$7,500"),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions().getHeight(context, 4),
              ),
              DefaultButton(
                text: Translations().translate["add address"],
                press: () {
                  // setUserFirstTime();
                  goTo(AddressPage(), context);
                },
              ),
            ],
          )),
    );
  }
}
