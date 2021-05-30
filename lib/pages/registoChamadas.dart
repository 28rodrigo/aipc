import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/registochamadasitem.dart';
import 'package:aipc/functions/contacto_data.dart';
import 'package:aipc/functions/makecalls.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/pages/contactoDetail.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RegistoChamadasPage extends StatefulWidget {
  //Contactos contactos;

  //RegistoChamadasPage({@required this.contactos});
  @override
  _RegistoChamadasPageState createState() => _RegistoChamadasPageState();
}

class _RegistoChamadasPageState extends State<RegistoChamadasPage> {
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
    registoContactos = new Contactos().getRegistoChamadas();

    DataProvider _data = Provider.of<DataProvider>(context);

    int numberOfPages = ((registoContactos.length - 1) / 5).round();
    // ignore: unnecessary_statements
    numberOfPages == 0 ? numberOfPages++ : null;
    print(numberOfPages);
    // final deviceWidth = MediaQuery.of(context).size.width;
    // final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          title: Text(
            "Registo Chamadas",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            (pageNumber * 5) - 5 <= registoContactos.length - 1
                ? RegistoChamadaItem(
                    contactDetails: registoContactos[(pageNumber * 5) - 5],
                    goOk: () {
                      handleContactsDetail(
                          context, registoContactos[(pageNumber * 5) - 5]);
                    },
                  )
                : SizedBox(),
            (pageNumber * 5) - 4 <= registoContactos.length - 1
                ? RegistoChamadaItem(
                    contactDetails: registoContactos[(pageNumber * 5) - 4],
                    goOk: () {
                      handleContactsDetail(
                          context, registoContactos[(pageNumber * 5) - 4]);
                    },
                  )
                : SizedBox(),
            (pageNumber * 5) - 3 <= registoContactos.length - 1
                ? RegistoChamadaItem(
                    contactDetails: registoContactos[(pageNumber * 5) - 3],
                    goOk: () {
                      handleContactsDetail(
                          context, registoContactos[(pageNumber * 5) - 3]);
                    },
                  )
                : SizedBox(),
            (pageNumber * 5) - 2 <= registoContactos.length - 1
                ? RegistoChamadaItem(
                    contactDetails: registoContactos[(pageNumber * 5) - 2],
                    goOk: () {
                      handleContactsDetail(
                          context, registoContactos[(pageNumber * 5) - 2]);
                    },
                  )
                : SizedBox(),
            (pageNumber * 5) - 1 <= registoContactos.length - 1
                ? RegistoChamadaItem(
                    contactDetails: registoContactos[(pageNumber * 5) - 1],
                    goOk: () {
                      handleContactsDetail(
                          context, registoContactos[(pageNumber * 5) - 1]);
                    },
                  )
                : SizedBox(),
          ],
        )),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: navButtons(
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

  void handleContactsDetail(context, contactDetail) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ContactoDetailsPage(
                  contactDetail: contactDetail,
                  contactos: new Contactos(),
                )));
  }
}
