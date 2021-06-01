import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

class AccessSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    DataProvider _data = Provider.of<DataProvider>(context);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Acessar Definições",
            style: TextStyle(
                fontSize: 35 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: SwipeDetector(
          onSwipeRight: () {
            if (_data.gesture == 1) Navigator.pop(context);
          },
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: deviceHeight * 0.2,
                width: deviceWidth * 0.95,
                child: FittedBox(
                  alignment: Alignment.center,
                  child: Text(
                    "Tem a certeza que quer\naceder ás definições?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Theme.of(context).accentColor,
                        fontWeight: FontWeight.bold),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsPage()));
                  },
                  style: ButtonStyle(alignment: Alignment.topCenter),
                  child: Container(
                    alignment: Alignment.center,
                    width: deviceWidth * 0.8,
                    height: deviceHeight * 0.2,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Theme.of(context).accentColor),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "SIM",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: deviceWidth * 0.2 * _data.count,
                          color: Colors.white),
                    ),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: deviceWidth * 0.8,
                    height: deviceHeight * 0.4,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Theme.of(context).accentColor),
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Não",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: deviceWidth * 0.25 * _data.count,
                          color: Colors.white),
                    ),
                  )),
            ],
          )),
        ));
  }
}
