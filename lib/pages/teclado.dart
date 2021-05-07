import 'package:aipc/components/navigationTeclado.dart';
import 'package:aipc/components/tecladoItem.dart';
import 'package:flutter/material.dart';

class TecladoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    //final deviceHeight = MediaQuery.of(context).size.height;
    final myController = TextEditingController();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
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
                TecladoItem(text: "1"),
                TecladoItem(text: "2"),
                TecladoItem(text: "3")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "4"),
                TecladoItem(text: "5"),
                TecladoItem(text: "6")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "7"),
                TecladoItem(text: "8"),
                TecladoItem(text: "9")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "*"),
                TecladoItem(text: "0"),
                TecladoItem(text: "#")
              ],
            )
          ],
        )),
        bottomNavigationBar: BottomAppBar(child: navigationTeclado()));
  }
}
