import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

class AboutPage extends StatelessWidget {
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: deviceWidth * 0.9,
                  child: Flexible(
                      child: Text(
                    "Desenvolvido por IPC-Works™",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * _data.count,
                    ),
                  )),
                ),
                SizedBox(
                  width: deviceWidth * 0.80,
                  height: deviceHeight * 0.1,
                ),
                Container(
                  width: deviceWidth * 0.9,
                  child: Flexible(
                      child: Text(
                    "Desenvolvedores:",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * _data.count,
                    ),
                  )),
                ),
                SizedBox(
                  width: deviceWidth * 0.80,
                  height: deviceHeight * 0.05,
                ),
                Container(
                  width: deviceWidth * 0.9,
                  child: Flexible(
                      child: Text(
                    "• João Esteves Gonçalves",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * _data.count,
                    ),
                  )),
                ),
                Container(
                  width: deviceWidth * 0.9,
                  child: Flexible(
                      child: Text(
                    "• João Miguel Pinto Santos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * _data.count,
                    ),
                  )),
                ),
                Container(
                  width: deviceWidth * 0.9,
                  child: Flexible(
                      child: Text(
                    "• Paulo Ricardo Durão Rodrigues",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * _data.count,
                    ),
                  )),
                ),
                Container(
                  width: deviceWidth * 0.9,
                  child: Flexible(
                      child: Text(
                    "• Rodrigo Cardoso Pereira",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * _data.count,
                    ),
                  )),
                ),
                Container(
                  width: deviceWidth * 0.9,
                  child: Flexible(
                      child: Text(
                    "• Rui Filipe Veloso Fernandes",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30 * _data.count,
                    ),
                  )),
                ),
                SizedBox(
                  width: deviceWidth * 0.80,
                  height: deviceHeight * 0.05,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(child: BackNavigation(goBack: () {
          Navigator.pop(context);
        })));
  }
}
