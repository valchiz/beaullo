import 'package:flutter/material.dart';
import 'package:beaullo/screens/dashboard/dashboard.dart';
import 'package:beaullo/screens/cart/cart.dart';
import 'package:beaullo/screens/userProfile/userProfile.dart';
import 'package:beaullo/screens/favourites/favourites.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/circles.dart';
import 'package:beaullo/shared/components/navCard.dart';
import 'package:beaullo/stylesheets/sheet.dart';

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
                icon: Icon(Icons.favorite),
                text: Translations().translate["tab2"],
              ),
              Tab(
                icon: Icon(Icons.shopping_cart),
                text: Translations().translate["tab3"],
              ),
              Tab(
                icon: Icon(Icons.person),
                text: Translations().translate["tab4"],
              ),
            ],
          ),
          body: TabBarView(
            children: [
              Dashboard(
                title: 'Dashboard',
              ),
              Favourites(),
              Cart(),
              UserProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
