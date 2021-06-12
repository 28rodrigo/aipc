import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/notifier.dart';

class SemContactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    DataProvider _data = Provider.of<DataProvider>(context);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Sem Contactos",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: SwipeDetector(
          onSwipeRight: () {
            if (_data.gesture == 1) Navigator.pop(context);
          },
          child: Center(
              child: Text(
            "Sem Contactos",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: deviceWidth * 0.2 * _data.count),
          )),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: BackNavigation(goBack: () {
              Navigator.pop(context);
            })));
  }
}
