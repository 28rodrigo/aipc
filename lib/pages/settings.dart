import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/notifier.dart';
import 'package:aipc/pages/about.dart';
import 'package:aipc/pages/colorscheme.dart';
import 'package:aipc/pages/home.dart';
import 'package:aipc/pages/registoChamadas.dart';
import 'package:aipc/pages/preferencias.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    DataProvider _data = Provider.of<DataProvider>(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        iconTheme: IconThemeData(color: Theme.of(context).accentColor),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          "Definições",
          style: TextStyle(
              fontSize: 40 * _data.count.toDouble(),
              color: Theme.of(context).accentColor),
        ),
      ),
      body: WillPopScope(
          // ignore: missing_return
          onWillPop: () async {
            Future.value(false);
          },
          child: SwipeDetector(
            onSwipeRight: () {
              if (_data.gesture == 1)
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomePage(),
                    ),
                    (route) => false);
            },
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  width: deviceWidth * 0.9,
                  height: deviceHeight * 0.1,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ColorSchemePage()));
                    },
                    child: Text(
                      "Esquema de Cores",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: deviceWidth * 0.08 * _data.count),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        side: BorderSide(
                            width: 1.5, color: Theme.of(context).accentColor)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MergeSemantics(
                      child: SizedBox(
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.1,
                        child: Semantics(
                          label: "Diminuir tamanho de letra",
                          child: MergeSemantics(
                            child: ElevatedButton(
                              onPressed: () {
                                _data.decrementCount();
                              },
                              child: Icon(
                                Icons.remove,
                                color: Theme.of(context).accentColor,
                                size: deviceWidth * 0.1,
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.grey[300],
                                  side: BorderSide(
                                      width: 1.5,
                                      color: Theme.of(context).accentColor)),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: deviceWidth * 0.5,
                      height: deviceHeight * 0.1,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Tamanho da letra",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontSize: deviceWidth * 0.08 * _data.count),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.grey[300],
                            side: BorderSide(
                                width: 1.5,
                                color: Theme.of(context).accentColor)),
                      ),
                    ),
                    MergeSemantics(
                      child: SizedBox(
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.1,
                        child: Semantics(
                          label: "Aumentar tamanho de letra",
                          child: ElevatedButton(
                            onPressed: () {
                              _data.incrementCount();
                            },
                            child: Icon(
                              Icons.add,
                              color: Theme.of(context).accentColor,
                              size: deviceWidth * 0.1,
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.grey[300],
                                side: BorderSide(
                                    width: 1.5,
                                    color: Theme.of(context).accentColor)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: deviceWidth * 0.9,
                  height: deviceHeight * 0.1,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PreferenciasPage()));
                    },
                    child: Text(
                      "Preferências",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: deviceWidth * 0.08 * _data.count),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        side: BorderSide(
                            width: 1.5, color: Theme.of(context).accentColor)),
                  ),
                ),
                SizedBox(
                  width: deviceWidth * 0.9,
                  height: deviceHeight * 0.1,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegistoChamadasPage()));
                    },
                    child: Text(
                      "Registo de Chamadas",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: deviceWidth * 0.08 * _data.count),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        side: BorderSide(
                            width: 1.5, color: Theme.of(context).accentColor)),
                  ),
                ),
                SizedBox(
                  width: deviceWidth * 0.9,
                  height: deviceHeight * 0.1,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => AboutPage()));
                    },
                    child: Text(
                      "Sobre a APP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: deviceWidth * 0.08 * _data.count),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        side: BorderSide(
                            width: 1.5, color: Theme.of(context).accentColor)),
                  ),
                )
              ],
            )),
          )),
      bottomNavigationBar: BottomAppBar(child: BackNavigation(
        goBack: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomePage(),
              ),
              (route) => false);
        },
      )),
    );
  }
}
