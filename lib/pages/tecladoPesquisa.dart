import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/tecladoItem.dart';
import 'package:aipc/functions/notifier.dart';

class TecladoPesquisaPage extends StatefulWidget {
  TecladoPesquisaPage();
  @override
  _TecladoPesquisaPageState createState() => _TecladoPesquisaPageState();
}

class _TecladoPesquisaPageState extends State<TecladoPesquisaPage> {
  final int numberOfPages = 3;
  int pageNumber = 1;

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
    final deviceWidth = MediaQuery.of(context).size.width;
    DataProvider _data = Provider.of<DataProvider>(context);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Pesquisa",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: SwipeDetector(
          onSwipeUp: () {
            if (_data.gesture == 1) _increasePage();
          },
          onSwipeDown: () {
            if (_data.gesture == 1) _decreasePage();
          },
          onSwipeRight: () {
            if (_data.gesture == 1) Navigator.pop(context);
          },
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pageNumber == 3 && (pageNumber * 12) + 65 - 12 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text:
                              String.fromCharCode((pageNumber * 12) + 65 - 12),
                          width: deviceWidth * 0.28,
                          search: true,
                        ),
                  pageNumber == 3 && (pageNumber * 12) + 65 - 11 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text:
                              String.fromCharCode((pageNumber * 12) + 65 - 11),
                          width: deviceWidth * 0.28,
                          search: true,
                        ),
                  pageNumber == 3 && (pageNumber * 12) + 65 - 10 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text:
                              String.fromCharCode((pageNumber * 12) + 65 - 10),
                          width: deviceWidth * 0.28,
                          search: true,
                        )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pageNumber == 3 && (pageNumber * 12) + 65 - 9 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 9),
                          width: deviceWidth * 0.28,
                          search: true,
                        ),
                  pageNumber == 3 && (pageNumber * 12) + 65 - 8 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 8),
                          width: deviceWidth * 0.28,
                          search: true,
                        ),
                  pageNumber == 3 && (pageNumber * 12) + 65 - 7 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 7),
                          width: deviceWidth * 0.28,
                          search: true,
                        )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pageNumber == 3 && (pageNumber * 12) + 65 - 6 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 6),
                          width: deviceWidth * 0.28,
                          search: true,
                        ),
                  pageNumber == 3 && (pageNumber * 12) + 65 - 5 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 5),
                          width: deviceWidth * 0.28,
                          search: true,
                        ),
                  pageNumber == 3 && (pageNumber * 12) + 65 - 4 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 4),
                          width: deviceWidth * 0.28,
                          search: true,
                        )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  pageNumber == 3 && (pageNumber * 12) + 65 - 3 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 3),
                          width: deviceWidth * 0.28,
                          search: true,
                        ),
                  pageNumber == 3 && (pageNumber * 12) + 65 - 2 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 2),
                          width: deviceWidth * 0.28,
                          search: true,
                        ),
                  pageNumber == 3 && (pageNumber * 12) + 65 - 1 > 90
                      ? SizedBox()
                      : TecladoItem(
                          text: String.fromCharCode((pageNumber * 12) + 65 - 1),
                          width: deviceWidth * 0.28,
                          search: true,
                        )
                ],
              ),
            ],
          )),
        ),
        bottomNavigationBar: BottomAppBar(
            child: NavButtons(
          goBack: () {
            Navigator.pop(context);
          },
          increase: () {
            _increasePage();
          },
          decrease: () {
            _decreasePage();
          },
        )));
  }
}
