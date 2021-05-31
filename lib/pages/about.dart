import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Sobre",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: SwipeDetector(
            onSwipeRight: () {
              if (_data.gesture == 1) Navigator.pop(context);
            },
            child: Text("Info sobre a App")),
        bottomNavigationBar: BottomAppBar(child: BackNavigation(goBack: () {
          Navigator.pop(context);
        })));
  }
}
