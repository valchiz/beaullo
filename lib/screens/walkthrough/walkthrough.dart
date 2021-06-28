import 'package:flutter/material.dart';
import 'package:beaullo/routes/pagesRoute.dart';
import 'package:beaullo/screens/getStarted/getStarted.dart';
import 'package:beaullo/shared/constants.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/shared/widgets/default_button.dart';
import 'package:beaullo/stylesheets/sheet.dart';

import 'components/walkthroughContent.dart';

class WalkthroughPage extends StatefulWidget {
  @override
  _WalkthroughPageState createState() => _WalkthroughPageState();
}

class _WalkthroughPageState extends State<WalkthroughPage> {
  int currentPage = 0;

  List<Map<String, String>> splashData;

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData =
        Translations().translate["splash data"];
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => WalkthroughContent(
                    mainDescription: splashData[index]["mainDescription"],
                    image: splashData[index]["image"],
                    text: splashData[index]['text'],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions().getWidth(context, 5)),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          splashData.length,
                          (index) => buildDot(index: index),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      DefaultButton(
                        text: Translations().translate["intro button"],
                        press: () {
                          // setUserFirstTime();
                          goToReplacement(GetStartedPage(), context);
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        // color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        color: currentPage == index ? kPrimaryColor : Color(0xFF4B0082),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
