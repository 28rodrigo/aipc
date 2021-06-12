import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/registochamadasitem.dart';
import 'package:aipc/functions/notifier.dart';
import 'package:aipc/pages/contactoDetail.dart';

class ChamadasNaoAtendidasPage extends StatefulWidget {
  ChamadasNaoAtendidasPage();

  @override
  _ChamadasNaoAtendidasPageState createState() =>
      _ChamadasNaoAtendidasPageState();
}

class _ChamadasNaoAtendidasPageState extends State<ChamadasNaoAtendidasPage> {
  List<Map<String, String>> registoContactos;
  int pageNumber = 1;

  void _increasePage(int numberOfPages) {
    print(numberOfPages);
    if (pageNumber <= numberOfPages) {
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
    List<Map<String, String>> chamadasNAtendidas = [];
    DataProvider _data = Provider.of<DataProvider>(context);
    registoContactos = _data.contactos.getRegistoChamadas();

    registoContactos.forEach((element) {
      if (element.values.elementAt(4) == 'nAtendida') {
        chamadasNAtendidas.add(element);
      }
    });
    int numberOfPages = ((chamadasNAtendidas.length - 1) / 5).round();
    // ignore: unnecessary_statements
    numberOfPages == 0 ? numberOfPages++ : null;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          title: Text(
            "Não Atendidas",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: SwipeDetector(
          onSwipeRight: () {
            if (_data.gesture == 1) Navigator.pop(context);
          },
          onSwipeDown: () {
            if (_data.gesture == 1) _decreasePage();
          },
          onSwipeUp: () {
            if (_data.gesture == 1) _increasePage(numberOfPages);
          },
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              (pageNumber * 5) - 5 <= chamadasNAtendidas.length - 1
                  ? RegistoChamadaItem(
                      contactDetails: chamadasNAtendidas[(pageNumber * 5) - 5],
                      goOk: () {
                        handleContactsDetail(
                            context, chamadasNAtendidas[(pageNumber * 5) - 5]);
                      },
                    )
                  : SizedBox(),
              (pageNumber * 5) - 4 <= chamadasNAtendidas.length - 1
                  ? RegistoChamadaItem(
                      contactDetails: chamadasNAtendidas[(pageNumber * 5) - 4],
                      goOk: () {
                        handleContactsDetail(
                            context, chamadasNAtendidas[(pageNumber * 5) - 4]);
                      },
                    )
                  : SizedBox(),
              (pageNumber * 5) - 3 <= chamadasNAtendidas.length - 1
                  ? RegistoChamadaItem(
                      contactDetails: chamadasNAtendidas[(pageNumber * 5) - 3],
                      goOk: () {
                        handleContactsDetail(
                            context, chamadasNAtendidas[(pageNumber * 5) - 3]);
                      },
                    )
                  : SizedBox(),
              (pageNumber * 5) - 2 <= chamadasNAtendidas.length - 1
                  ? RegistoChamadaItem(
                      contactDetails: chamadasNAtendidas[(pageNumber * 5) - 2],
                      goOk: () {
                        handleContactsDetail(
                            context, chamadasNAtendidas[(pageNumber * 5) - 2]);
                      },
                    )
                  : SizedBox(),
              (pageNumber * 5) - 1 <= chamadasNAtendidas.length - 1
                  ? RegistoChamadaItem(
                      contactDetails: chamadasNAtendidas[(pageNumber * 5) - 1],
                      goOk: () {
                        handleContactsDetail(
                            context, chamadasNAtendidas[(pageNumber * 5) - 1]);
                      },
                    )
                  : SizedBox(),
            ],
          )),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: NavButtons(
              goBack: () {
                Navigator.pop(context);
              },
              increase: () {
                _increasePage(numberOfPages);
              },
              decrease: () {
                _decreasePage();
              },
            )));
  }

  void handleContactsDetail(
    context,
    contactDetail,
  ) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ContactoDetailsPage(
                  contactDetail: contactDetail,
                )));
  }
}
