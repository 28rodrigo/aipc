import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

class TipoTecladoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Tipo Teclado",
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: deviceWidth * 0.85,
                  child: Flexible(
                      child: Text(
                    "Que tipo de teclado deseja usar para inserir texto?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40 * _data.count,
                    ),
                  )),
                ),
                SizedBox(
                  width: deviceWidth * 0.9,
                  height: deviceHeight * 0.1,
                  child: ElevatedButton(
                    onPressed: () {
                      _data.changeTipoTeclado(0);
                      Navigator.pop(context);
                      // print(_data.gesture);
                      //Navigator.pop(context);
                    },
                    child: Text(
                      "Teclado da App",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: deviceWidth * 0.08 * _data.count),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        side: BorderSide(width: 1.5, color: Colors.black)),
                  ),
                ),
                SizedBox(
                  width: deviceWidth * 0.9,
                  height: deviceHeight * 0.1,
                  child: ElevatedButton(
                    onPressed: () {
                      _data.changeTipoTeclado(1);
                      Navigator.pop(context);
                      // _data.changeGesture();
                      //print(_data.gesture);
                      //Navigator.pop(context);
                    },
                    child: Text(
                      "Teclado do Smartphone",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: deviceWidth * 0.08 * _data.count),
                    ),
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey[300],
                        side: BorderSide(width: 1.5, color: Colors.black)),
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(child: BackNavigation(goBack: () {
          Navigator.pop(context);
        })));
  }
}
