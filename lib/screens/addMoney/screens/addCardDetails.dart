import 'package:flutter/material.dart';
import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/addMoney/screens/card/card.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/screens/addMoney/screens/card/components/addCardForm.dart';

class AddCardDetails extends StatelessWidget {
  // Translations().translate["splash data"]
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Dimensions().getHeight(context, 4),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        goToReplacement(CardPage(), context);
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    SizedBox(
                      width: Dimensions().getHeight(context, 10),
                    ),
                    Header(title: 'Add Card'),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: Dimensions().getHeight(context, 1),
                ),
                // AddCardForm(
                //   formKey: formKey,
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
