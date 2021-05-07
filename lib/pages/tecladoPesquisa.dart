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
                TecladoItem(text: "A"),
                TecladoItem(text: "B"),
                TecladoItem(text: "C")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "D"),
                TecladoItem(text: "E"),
                TecladoItem(text: "F")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "G"),
                TecladoItem(text: "H"),
                TecladoItem(text: "I")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TecladoItem(text: "J"),
                TecladoItem(text: "K"),
                TecladoItem(text: "L")
              ],
            )
          ],
        )),
        bottomNavigationBar: BottomAppBar(child: navButtons()));
  }
}
