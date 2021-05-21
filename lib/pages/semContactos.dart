import 'package:aipc/components/backNavigation.dart';
import 'package:flutter/material.dart';

class SemContactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Sem Contactos",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: Center(
            child: Text(
          "Sem Contactos",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: deviceWidth * 0.2),
        )),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: BackNavigation(goBack: () {
              Navigator.pop(context);
            })));
  }
}
