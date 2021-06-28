import 'package:flutter/material.dart';
import 'package:beaullo/screens/addMoney/screens/card/services/mockCards.dart';
import 'package:beaullo/stylesheets/sheet.dart';

import '../../../../../shared/components/navCard.dart';

class AllCards extends StatefulWidget {
  const AllCards({Key key}) : super(key: key);

  @override
  _AllCardsState createState() => _AllCardsState();
}

class _AllCardsState extends State<AllCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: List.generate(
        allCards.length,
        (index) {
          return Column(
            children: [
              NavCard(
                title: allCards[index]["starredNumber"],
                icon: 'assets/images/google.jpeg',
                subTitle: allCards[index]["bankName"],
                // press: () {
                //   goTo(CardPage(), context);
                // },
              ),
              SizedBox(
                height: Dimensions().getHeight(context, 2),
              ),
            ],
          );
        },
      ),
    ));
  }
}
