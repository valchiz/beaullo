import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/addressPage/address.dart';
import 'package:beaullo/screens/payment/components/addCardForm.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:flutter/material.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:beaullo/screens/explorePage/services/mockData.dart';

class Payment extends StatelessWidget {
  // Translations().translate["splash data"]
  final formKey = GlobalKey<FormState>();
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
              Header(title: 'Payment'),
              Divider(),
              SizedBox(
                height: Dimensions().getHeight(context, 1),
              ),
              Expanded(
                child: ListView(
                  children: [
                    AddCardForm(),
                    // ListView(
                    //   children: List.generate(allItems.length, (index) {
                    //     return
                    //   }),
                    // ),
                  ],
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
                      Translations().translate["subTotal"],
                    ),
                    SizedBox(
                      width: Dimensions().getWidth(context, 50),
                    ),
                    TextThemeSheet().mediumText("\$7,495"),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions().getHeight(context, 2),
              ),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextThemeSheet().smallText(
                      Translations().translate["tax"],
                    ),
                    SizedBox(
                      width: Dimensions().getWidth(context, 70),
                    ),
                    TextThemeSheet().mediumText("\$5"),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions().getHeight(context, 4),
              ),
              Divider(),
              Container(
                padding: EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextThemeSheet().smallText(
                      Translations().translate["total"],
                    ),
                    SizedBox(
                      width: Dimensions().getWidth(context, 55),
                    ),
                    TextThemeSheet().mediumText("\$7,500"),
                  ],
                ),
              ),
              SizedBox(
                height: Dimensions().getHeight(context, 4),
              ),
              DefaultButton(
                text: Translations().translate["placeOrder"],
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
