import 'package:flutter/material.dart';
import 'package:beaullo/screens/passcodeSave/components/passcodeSave.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class PasscodeSave extends StatelessWidget {
  // Translations().translate["splash data"]
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions().getWidth(context, 5)),
          child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Dimensions().getHeight(context, 10),
              ),
              TextThemeSheet().largeText(Translations().translate["passcode"]),
              SizedBox(
                height: Dimensions().getHeight(context, 1),
              ),
              TextThemeSheet()
                  .mediumText(Translations().translate["passcode desc"]),
              SizedBox(
                height: Dimensions().getHeight(context, 5),
              ),
              PasscodeSaveForm(
                formKey: formKey,
              )
            ],
          ),
        ));
  }
}
