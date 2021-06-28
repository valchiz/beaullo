import 'package:flutter/material.dart';
import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/addMoney/addMoney.dart';
import 'package:beaullo/screens/addMoney/screens/card/components/addByCardForm.dart';
import 'package:beaullo/shared/widgets/header.dart';

import '../../../../shared/services/translationService.dart';
import '../../../../stylesheets/sheet.dart';

class CardPage extends StatelessWidget {
  // Translations().translate["splash data"]
  final formKey = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(15),
        // child: ListView(
        //   children: [
        //     Row(
        //       children: [
        //         GestureDetector(
        //           onTap: () {
        //             goToReplacement(AddMoneyPage(), context);
        //           },
        //           child: Icon(Icons.arrow_back_ios),
        //         ),
        //         Header(title: 'Add By Card'),
        //       ],
        //     ),
        //     Divider(),
        //     SizedBox(
        //       height: Dimensions().getHeight(context, 2),
        //     ),
        //     TextThemeSheet().mediumText(Translations().translate["card"]),
        //     SizedBox(
        //       height: Dimensions().getHeight(context, 2),
        //     ),
        //     AddByCardForm(formKey: formKey, formKey2: formKey2),
        //   ],
        // ),
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
                        goToReplacement(AddMoneyPage(), context);
                      },
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    Header(title: 'Add By Card'),
                  ],
                ),
                Divider(),
                SizedBox(
                  height: Dimensions().getHeight(context, 1),
                ),
                TextThemeSheet().mediumText(Translations().translate["card"]),
                SizedBox(
                  height: Dimensions().getHeight(context, 1),
                ),
                AddByCardForm(formKey: formKey, formKey2: formKey2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
