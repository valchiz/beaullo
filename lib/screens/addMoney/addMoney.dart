import 'package:flutter/material.dart';
import 'package:beaullo/screens/addMoney/screens/card/card.dart';
import 'package:beaullo/shared/widgets/header.dart';

import '../../routes/pagesRoute.dart';
import '../../shared/components/navCard.dart';
import '../../stylesheets/sheet.dart';

class AddMoneyPage extends StatelessWidget {
  // Translations().translate["splash data"]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(15),
      child: ListView(
        children: [
          Header(title: 'Add Money Options'),
          Divider(),
          SizedBox(
            height: Dimensions().getHeight(context, 2),
          ),
          NavCard(
            title: 'Cards',
            icon: 'assets/images/google.jpeg',
            subTitle: 'Add money using a credit or debit card',
            press: () {
              goTo(CardPage(), context);
            },
          ),
        ],
      ),
    ));
  }
}
