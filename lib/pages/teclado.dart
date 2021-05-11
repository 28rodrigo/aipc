import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/navigationTeclado.dart';
import 'package:aipc/components/tecladoItem.dart';
import 'package:flutter/material.dart';

class TecladoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
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
        body: Column(
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
              children: [
                Container(
                  width: deviceWidth * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TecladoItem(text: "A", width: deviceWidth * 0.225),
                          TecladoItem(text: "B", width: deviceWidth * 0.225),
                          TecladoItem(text: "C", width: deviceWidth * 0.225)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TecladoItem(text: "D", width: deviceWidth * 0.225),
                          TecladoItem(text: "E", width: deviceWidth * 0.225),
                          TecladoItem(text: "F", width: deviceWidth * 0.225)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TecladoItem(text: "G", width: deviceWidth * 0.225),
                          TecladoItem(text: "H", width: deviceWidth * 0.225),
                          TecladoItem(text: "I", width: deviceWidth * 0.225)
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.2,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            color: Theme.of(context).primaryColorDark),
                        child: TextButton(
                          style: ButtonStyle(alignment: Alignment.topCenter),
                          child: Icon(
                            Icons.arrow_upward,
                            size: 70,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        )),
                    Container(
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.2,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.black),
                            color: Theme.of(context).primaryColorDark),
                        child: TextButton(
                          style: ButtonStyle(alignment: Alignment.topCenter),
                          child: Icon(
                            Icons.arrow_downward,
                            size: 70,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(child: navigationTeclado()));
  }
}
