import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/navigationTeclado.dart';
import 'package:aipc/components/tecladoItem.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TecladoPage extends StatefulWidget {
  final void Function(String) setNome;
  String startValue = '';

  TecladoPage({this.setNome, this.startValue});
  @override
  _TecladoPageState createState() => _TecladoPageState();
}

class _TecladoPageState extends State<TecladoPage> {
  final int numberOfPages = 3;
  int aux = 0;
  int pageNumber = 1;
  var myController = TextEditingController();
  void _increasePage() {
    print(numberOfPages);
    if (pageNumber < numberOfPages) {
      setState(() {
        pageNumber++;
      });
    }
  }

  void _decreasePage() {
    if (pageNumber > 1) {
      setState(() {
        pageNumber--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    if (aux == 0) {
      myController.text = widget.startValue;
      aux++;
    }

    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "NOME",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                        fontSize: 30 * _data.count,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).accentColor),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      if (myController.text.length > 0)
                        myController.text = myController.text
                            .substring(0, myController.text.length - 1);
                    },
                    child: Icon(
                      Icons.backspace,
                      color: Theme.of(context).accentColor,
                      size: deviceWidth * 0.1,
                    ))
              ],
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
                          pageNumber == 3 && (pageNumber * 9) + 65 - 9 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 9),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController),
                          pageNumber == 3 && (pageNumber * 9) + 65 - 8 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 8),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController),
                          pageNumber == 3 && (pageNumber * 9) + 65 - 7 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 7),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          pageNumber == 3 && (pageNumber * 9) + 65 - 6 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 6),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController),
                          pageNumber == 3 && (pageNumber * 9) + 65 - 5 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 5),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController),
                          pageNumber == 3 && (pageNumber * 9) + 65 - 4 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 4),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController)
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          pageNumber == 3 && (pageNumber * 9) + 65 - 3 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 3),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController),
                          pageNumber == 3 && (pageNumber * 9) + 65 - 2 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 2),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController),
                          pageNumber == 3 && (pageNumber * 9) + 65 - 1 > 90
                              ? SizedBox()
                              : TecladoItem(
                                  text: String.fromCharCode(
                                      (pageNumber * 9) + 65 - 1),
                                  width: deviceWidth * 0.225,
                                  search: false,
                                  controller: myController)
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
                            border: Border.all(
                                width: 1, color: Theme.of(context).accentColor),
                            color: Theme.of(context).primaryColorDark),
                        child: TextButton(
                          style: ButtonStyle(alignment: Alignment.topCenter),
                          child: Icon(
                            Icons.arrow_upward,
                            size: 70,
                            color: Theme.of(context).accentColor,
                          ),
                          onPressed: () {
                            _decreasePage();
                          },
                        )),
                    Container(
                        width: deviceWidth * 0.2,
                        height: deviceHeight * 0.2,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Theme.of(context).accentColor),
                            color: Theme.of(context).primaryColorDark),
                        child: TextButton(
                          style: ButtonStyle(alignment: Alignment.topCenter),
                          child: Icon(
                            Icons.arrow_downward,
                            size: 70,
                            color: Theme.of(context).accentColor,
                          ),
                          onPressed: () {
                            _increasePage();
                          },
                        )),
                  ],
                )
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: NavigationTeclado(
          goBack: () {
            Navigator.pop(context);
          },
          goOK: () {
            widget.setNome(myController.text);
            Navigator.pop(context);
          },
        )));
  }
}
