import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/tecladoItem.dart';
import 'package:flutter/material.dart';

class TecladoPesquisaPage extends StatelessWidget {
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
            "Pesquisa",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                TecladoItem(
                  text: "A",
                  width: deviceWidth * 0.28,
                ),
                TecladoItem(text: "B", width: deviceWidth * 0.28),
                TecladoItem(text: "C", width: deviceWidth * 0.28)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "D", width: deviceWidth * 0.28),
                TecladoItem(text: "E", width: deviceWidth * 0.28),
                TecladoItem(text: "F", width: deviceWidth * 0.28)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "G", width: deviceWidth * 0.28),
                TecladoItem(text: "H", width: deviceWidth * 0.28),
                TecladoItem(text: "I", width: deviceWidth * 0.28)
              ],
            ),
          ],
        )),
        bottomNavigationBar: BottomAppBar(child: navButtons(
          goBack: () {
            Navigator.pop(context);
          },
        )));
  }
}
