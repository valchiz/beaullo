import 'package:flutter/material.dart';

class SamplePage extends StatelessWidget {
  // Translations().translate["splash data"]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample Page'),
      ),
      body: Center(
        child: Container(
          child: Text('SamplePage'),
        ),
      ),
    );
  }
}
