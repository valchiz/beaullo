import 'package:flutter/material.dart';
import 'package:beaullo/shared/widgets/header.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class UserProfile extends StatelessWidget {
  // Translations().translate["splash data"]
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Dimensions().getHeight(context, 4),
            ),
            Header(title: 'Cart'),
            Divider(),
            SizedBox(
              height: Dimensions().getHeight(context, 1),
            ),
            TextThemeSheet().largeSectionText('Your Friends on Beaullo'),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: Dimensions().getWidth(context, 10),
                  height: Dimensions().getHeight(context, 10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    // image: DecorationImage(
                    //   image: AssetImage('assets/images/google.jpeg'),
                    //   fit: BoxFit.contain,
                    // ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
