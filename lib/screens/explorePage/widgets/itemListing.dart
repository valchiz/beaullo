import 'package:beaullo/shared/components/navCard.dart';
import 'package:beaullo/shared/components/navCard2.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:flutter/material.dart';
import 'package:beaullo/screens/explorePage/services/mockData.dart';
import 'package:beaullo/screens/dashboard/components/cardLarge.dart';
import 'package:beaullo/screens/dashboard/components/searchBar.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/adjustableButton.dart';

class ItemListing extends StatefulWidget {
  const ItemListing({Key key}) : super(key: key);

  @override
  _ItemListingState createState() => _ItemListingState();
}

class _ItemListingState extends State<ItemListing> {
  final formKey = GlobalKey<FormState>();
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
            // Divider(),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    height: Dimensions().getHeight(context, 40),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                    ),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: List.generate(
                            allItems.length,
                            (index) {
                              return Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(5),
                                    child: CardLarge(
                                      height: 40,
                                      url: allItems[index]['url'],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 5),
                  ),
                  Row(
                    children: [
                      TextThemeSheet()
                          .mediumText(Translations().translate["make yours"]),
                      SizedBox(
                        width: Dimensions().getWidth(context, 30),
                      ),
                      GestureDetector(
                        onTap: () {
                          showMenu(context);
                        },
                        child: Icon(
                          Icons.add_box,
                          color: ColorSet().tetiaryColor,
                          size: 30.0,
                        ),
                      )
                    ],
                  ),
                  // Divider(),
                  SizedBox(
                    height: Dimensions().getHeight(context, 2),
                  ),
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    decoration: BoxDecoration(
                      // shape: BoxShape.rectangle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black45,
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                          offset: Offset(
                              2.0, 4.0), // shadow direction: bottom right
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextThemeSheet()
                                          .mediumText(explore["brandName"]),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 45),
                                      ),
                                      // Icon(
                                      //   Icons.rate_review_outlined,
                                      // )
                                      TextThemeSheet()
                                          .mediumText(explore["price"]),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  TextThemeSheet().smallText(explore["title"]),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 3),
                                  ),
                                  Container(
                                    width: Dimensions().getWidth(context, 80),
                                    child: TextThemeSheet()
                                        .mediumText(explore["subTitle"]),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        // SizedBox(
                        //   height: Dimensions().getHeight(context, 2),
                        // ),
                        Container(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextThemeSheet().mediumText("Description"),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  Container(
                                    width: Dimensions().getWidth(context, 80),
                                    child: TextThemeSheet().smallText(
                                      explore["desc"],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // Divider(),
                  SizedBox(
                    height: Dimensions().getHeight(context, 2),
                  ),
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white54,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextThemeSheet()
                                          .mediumText("Designer's contact"),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 25),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorSet().primaryColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  TextThemeSheet().smallText(
                                      explore["brandRepresentative"]),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 2),
                  ),
                  Container(
                    width: Dimensions().getWidth(context, 100),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white54,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextThemeSheet().mediumText(
                                          "Delivery and return policy"),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 5),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorSet().primaryColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  Row(
                                    children: [
                                      TextThemeSheet().smallText(
                                        explore["estimatedArrival"],
                                      ),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 20),
                                      ),
                                      TextThemeSheet().smallText(
                                        explore["deliveryCost"],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  Row(
                                    children: [
                                      TextThemeSheet().mediumText(
                                        "14 August, 2021",
                                      ),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 15),
                                      ),
                                      TextThemeSheet().mediumText(
                                        "\$5000",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 3),
                                  ),
                                  Row(
                                    children: [
                                      TextThemeSheet().smallText(
                                        explore["returnExchange"],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  Row(
                                    children: [
                                      TextThemeSheet().mediumText(
                                        "Accepted",
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 4),
                  ),

                  Container(
                    width: Dimensions().getWidth(context, 100),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white54,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              alignment: Alignment.topLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      TextThemeSheet().mediumText("Reviews"),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 50),
                                      ),
                                      Icon(
                                        Icons.arrow_forward_ios,
                                        color: ColorSet().primaryColor,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  Row(
                                    children: [
                                      TextThemeSheet().smallText(
                                        explore["estimatedArrival"],
                                      ),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 20),
                                      ),
                                      TextThemeSheet().smallText(
                                        explore["deliveryCost"],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  Row(
                                    children: [
                                      TextThemeSheet().mediumText(
                                        "14 August, 2021",
                                      ),
                                      SizedBox(
                                        width:
                                            Dimensions().getWidth(context, 15),
                                      ),
                                      TextThemeSheet().mediumText(
                                        "\$5000",
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 3),
                                  ),
                                  Row(
                                    children: [
                                      TextThemeSheet().smallText(
                                        explore["returnExchange"],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: Dimensions().getHeight(context, 2),
                                  ),
                                  Row(
                                    children: [
                                      TextThemeSheet().mediumText(
                                        "Accepted",
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 4),
                  ),
                  DefaultButton(
                    text: Translations().translate["add to cart"],
                    press: () {
                      // setUserFirstTime();
                      // goTo(CartPage(), context);
                    },
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 2),
                  ),
                  DefaultButton(
                    text: Translations().translate["buy now"],
                    press: () {
                      // setUserFirstTime();
                      // goTo(CartPage(), context);
                    },
                  ),
                  SizedBox(
                    height: Dimensions().getHeight(context, 2),
                  ),
                  Center(
                    child: TextThemeSheet().smallText(
                        'Delivery takes 14 business days if you order now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ///hdghgshjgshgsjfjkjkfhsjk
  ///
  ///b
  showMenu(context) {
    final Map<String, dynamic> formData = {
      'accountLocation': null,
      'accountName': null,
      'accountNumber': null,
      'iban': null,
      'swiftCode': null,
      'userID': "testing mobile",
    };
    showDialog(
      context: context,
      builder: (BuildContext contextt) {
        return Container(
          width: Dimensions().getWidth(context, 100),
          child: AlertDialog(
            clipBehavior: Clip.none,
            content: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextThemeSheet().smallText(
                      'Please provide the correct information below'),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    SizedBox(
                      height: Dimensions().getHeight(context, 5),
                    ),
                    Positioned(
                      right: -40.0,
                      top: -80.0,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Icon(Icons.close),
                        ),
                      ),
                    ),
                    Form(
                      key: formKey,
                      child: Column(
                        // mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: Translations().translate["length"],
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: FontSet().mediumFontSize,
                                      fontFamily: FontSet().fontFamilyRegular)),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your length';
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                formData['length'] = value;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: Translations().translate["wrist"],
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: FontSet().mediumFontSize,
                                      fontFamily: FontSet().fontFamilyRegular)),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your wrist size';
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                formData['wrist'] = value;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: Translations().translate["hip"],
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: FontSet().mediumFontSize,
                                      fontFamily: FontSet().fontFamilyRegular)),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your hip size';
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                formData['hip'] = value;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: Translations().translate["waist"],
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: FontSet().mediumFontSize,
                                      fontFamily: FontSet().fontFamilyRegular)),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your waist size';
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                formData['waist'] = value;
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: Translations().translate["bust"],
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontSize: FontSet().mediumFontSize,
                                      fontFamily: FontSet().fontFamilyRegular)),
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Please enter your bust size';
                                }
                                return null;
                              },
                              onSaved: (String value) {
                                formData['bust'] = value;
                              },
                            ),
                          ),
                          SizedBox(
                            height: Dimensions().getHeight(context, 5),
                          ),
                          DefaultButton(
                            text: "SUBMIT",
                            press: () {
                              if (formKey.currentState.validate()) {
                                formKey.currentState.save();
                              }
                              // goTo(Beneficiaries(), context);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
