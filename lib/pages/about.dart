import 'package:aipc/components/backNavigation.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Sobre",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: Text("Info sobre a App"),
        bottomNavigationBar: BottomAppBar(child: BackNavigation(goBack: () {
          Navigator.pop(context);
        })));
  }
}
