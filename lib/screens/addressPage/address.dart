import 'package:beaullo/screens/addressPage/components/addressForm.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:flutter/material.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class AddressPage extends StatelessWidget {
  // Translations().translate["splash data"]
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(15),
          // padding: EdgeInsets.symmetric(
          //   horizontal: Dimensions().getWidth(context, 5),
          // ),
          child: Column(
            children: [
              SizedBox(
                height: Dimensions().getHeight(context, 4),
              ),
              Container(
                child: Row(
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
                    Header(title: 'Add Address'),
                  ],
                ),
              ),
              Divider(),
              Expanded(
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: Dimensions().getHeight(context, 2),
                    // ),
                    TextThemeSheet()
                        .largeText(Translations().translate["enterAddress"]),
                    SizedBox(
                      height: Dimensions().getHeight(context, 1),
                    ),
                    TextThemeSheet()
                        .mediumText(Translations().translate["address desc"]),
                    SizedBox(
                      height: Dimensions().getHeight(context, 5),
                    ),
                    AddressForm(
                      formKey: formKey,
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
