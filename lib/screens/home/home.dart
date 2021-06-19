import 'package:flutter/material.dart';
import 'package:nawali/screens/dashboard/dashboard.dart';
import 'package:nawali/screens/more/more.dart';
import 'package:nawali/screens/payments/payments.dart';
import 'package:nawali/screens/transferMoney/transfermoney.dart';
import 'package:nawali/shared/services/translationService.dart';
import 'package:nawali/shared/widgets/circles.dart';
import 'package:nawali/shared/components/navCard.dart';
import 'package:nawali/stylesheets/sheet.dart';

class TabsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          bottomNavigationBar: TabBar(
            labelColor: ColorSet().primaryColor,
            unselectedLabelColor: ColorSet().secondaryColor,
            labelStyle: TextStyle(
                color: ColorSet().primaryColor,
                fontSize: 10,
                fontFamily: FontSet().fontFamilyRegular),
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: Translations().translate["tab1"],
              ),
              Tab(
                icon: Icon(Icons.payment),
                text: Translations().translate["tab2"],
              ),
              Tab(
                icon: Icon(Icons.transfer_within_a_station),
                text: Translations().translate["tab3"],
              ),
              Tab(
                icon: Icon(Icons.more),
                text: Translations().translate["tab4"],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              // Dashboard(
              //   title: 'Dashboard',
              // ),
              // Payments(),
              // TransferMoney(),
              // // Center(child: Text('Transfers Content Here')),
              // More(),
            ],
          ),
        ),
      ),
    );
  }
}
