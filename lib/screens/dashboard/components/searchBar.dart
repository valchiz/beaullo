import 'package:flutter/material.dart';
import 'package:beaullo/shared/services/translationService.dart';
import 'package:beaullo/stylesheets/sheet.dart';

class SearchBar extends StatefulWidget {
  final int value;
  final formKey;

  const SearchBar({
    Key key,
    this.formKey,
    this.value = 0,
  });

  @override
  _SearchBarFormState createState() => _SearchBarFormState();
}

class _SearchBarFormState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> formData = {
      'keyWord': null,
    };
    return Form(
      key: widget.formKey,
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(
          //   height: Dimensions().getHeight(context, 2),
          // ),
          Container(
            width: Dimensions().getWidth(context, 65),
            height: Dimensions().getHeight(context, 5),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(20.0),
                  ),
                ),
                hintText: Translations().translate["keyword"],
                suffixIcon: Icon(Icons.search),
                hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: FontSet().smallFontSize,
                    fontFamily: FontSet().fontFamilyRegular),
              ),
              onSaved: (String value) {
                formData['keyword'] = value;
              },
            ),
          ),
          // SizedBox(
          //   height: Dimensions().getHeight(context, 1),
          // ),
        ],
      ),
    );
  }
}
