import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

import 'package:aipc/components/navigationTecladoPesquisa.dart';
import 'package:aipc/components/tecladoItem.dart';
import 'package:aipc/functions/notifier.dart';

class TecladoNumerico2Page extends StatefulWidget {
  final void Function(String) setNumero;
  final String startValue;

  TecladoNumerico2Page({this.setNumero, this.startValue});

  @override
  _TecladoNumerico2PageState createState() => _TecladoNumerico2PageState();
}

class _TecladoNumerico2PageState extends State<TecladoNumerico2Page> {
  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final myController = TextEditingController(text: widget.startValue);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Teclado",
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
              Row(
                children: [
                  Container(
                    width: deviceWidth * 0.82,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Theme.of(context).accentColor),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      controller: myController,
                      enabled: false,
                      decoration: InputDecoration(border: InputBorder.none),
                      style: TextStyle(
                          fontSize: 40 * _data.count,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).accentColor),
                    ),
                  ),
                  IconButton(
                      padding: EdgeInsets.all(1),
                      tooltip: "Eliminar Caracter",
                      onPressed: () {
                        if (myController.text.length > 0)
                          myController.text = myController.text
                              .substring(0, myController.text.length - 1);
                      },
                      icon: Icon(
                        Icons.backspace,
                        color: Theme.of(context).accentColor,
                        size: deviceWidth * 0.1,
                      ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TecladoItem(
                    text: "1",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  ),
                  TecladoItem(
                    text: "2",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  ),
                  TecladoItem(
                    text: "3",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TecladoItem(
                    text: "4",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  ),
                  TecladoItem(
                    text: "5",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  ),
                  TecladoItem(
                    text: "6",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TecladoItem(
                    text: "7",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  ),
                  TecladoItem(
                    text: "8",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  ),
                  TecladoItem(
                    text: "9",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TecladoItem(
                    text: "*",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  ),
                  TecladoItem(
                    text: "0",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  ),
                  TecladoItem(
                    text: "#",
                    width: deviceWidth * 0.29,
                    controller: myController,
                    search: false,
                  )
                ],
              )
            ],
          )),
        ),
        bottomNavigationBar: BottomAppBar(
            child: NavigationTecladoPesquisa(
          type: 2,
          goBack: () {
            Navigator.pop(context);
          },
          goOK: () {
            widget.setNumero(myController.text);
            Navigator.pop(context);
          },
        )));
  }
}
