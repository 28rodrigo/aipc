import 'package:aipc/pages/settings.dart';
import 'package:flutter/material.dart';

class AccessSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Acessar Definições",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: Center(
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
                      color: Theme.of(context).primaryColorDark,
                      fontWeight: FontWeight.bold),
                ),
                fit: BoxFit.contain,
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                },
                style: ButtonStyle(alignment: Alignment.topCenter),
                child: Container(
                  alignment: Alignment.center,
                  width: deviceWidth * 0.8,
                  height: deviceHeight * 0.2,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "SIM",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.2,
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
                      border: Border.all(width: 2, color: Colors.black),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "Não",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: deviceWidth * 0.25,
                        color: Colors.white),
                  ),
                )),
          ],
        )));
  }
}
