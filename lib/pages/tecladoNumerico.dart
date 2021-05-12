import 'package:aipc/components/navigationTecladoPesquisa.dart';
import 'package:aipc/components/tecladoItem.dart';
import 'package:flutter/material.dart';

class TecladoNumericoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    //final deviceHeight = MediaQuery.of(context).size.height;
    final myController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Teclado",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: deviceWidth * 0.95,
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: TextField(
                controller: myController,
                enabled: false,
                decoration: InputDecoration(border: InputBorder.none),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "1", width: deviceWidth * 0.29),
                TecladoItem(text: "2", width: deviceWidth * 0.29),
                TecladoItem(text: "3", width: deviceWidth * 0.29)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "4", width: deviceWidth * 0.29),
                TecladoItem(text: "5", width: deviceWidth * 0.29),
                TecladoItem(text: "6", width: deviceWidth * 0.29)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "7", width: deviceWidth * 0.29),
                TecladoItem(text: "8", width: deviceWidth * 0.29),
                TecladoItem(text: "9", width: deviceWidth * 0.29)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "*", width: deviceWidth * 0.29),
                TecladoItem(text: "0", width: deviceWidth * 0.29),
                TecladoItem(text: "#", width: deviceWidth * 0.29)
              ],
            )
          ],
        )),
        bottomNavigationBar: BottomAppBar(child: navigationTecladoPesquisa(
          goBack: () {
            Navigator.pop(context);
          },
        )));
  }
}
