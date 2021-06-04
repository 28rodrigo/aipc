import 'package:aipc/functions/contacto_data.dart';
import 'package:aipc/functions/makecalls.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/pages/accessSettings.dart';
import 'package:aipc/pages/chamadasnaoatendidas.dart';
import 'package:aipc/pages/contactos.dart';
import 'package:aipc/pages/tecladoNumerico.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        iconTheme: IconThemeData(color: Theme.of(context).accentColor),
        title: Text(
          "Página Principal",
          style: TextStyle(
              fontSize: 30 * _data.count, color: Theme.of(context).accentColor),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
                size: deviceHeight * 0.04,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccessSettings())).then((value) {
                  setState(() {});
                });
              }),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: deviceHeight * 0.18,
                width: deviceWidth * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                      width: 3, color: Theme.of(context).accentColor),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColorDark,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () async {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DateTime.now().minute.toString().length < 2
                          ? Text(
                              DateTime.now().hour.toString() +
                                  ':0' +
                                  DateTime.now().minute.toString(),
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: deviceHeight * 0.08 * _data.count,
                                  fontWeight: FontWeight.bold),
                            )
                          : Text(
                              DateTime.now().hour.toString() +
                                  ':' +
                                  DateTime.now().minute.toString(),
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontSize: deviceHeight * 0.08 * _data.count,
                                  fontWeight: FontWeight.bold),
                            ),
                      Text(
                        DateTime.now().day.toString() +
                            '/' +
                            DateTime.now().month.toString() +
                            '/' +
                            DateTime.now().year.toString(),
                        style: TextStyle(
                            color: Theme.of(context).accentColor,
                            fontSize: deviceHeight * 0.06 * _data.count),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            height: deviceHeight * 0.15,
            width: deviceWidth * 0.95,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border:
                  Border.all(width: 3, color: Theme.of(context).accentColor),
            ),
            child: ElevatedButton(
              onPressed: () {
                //FlutterPhoneDirectCaller.callNumber('912684074');
                callnow('tel://' + _data.contactos.sos.values.elementAt(2));
              },
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColorDark,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/sos.png'),
                        fit: BoxFit.contain,
                      ),
                    ),
                    width: deviceWidth * 0.3,
                    height: deviceHeight * 0.2,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "S.O.S",
                      style: TextStyle(
                          fontSize: deviceWidth * 0.2 * _data.count,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColorDark,
                borderRadius: BorderRadius.circular(15),
                border:
                    Border.all(width: 3, color: Theme.of(context).accentColor)),
            width: deviceWidth * 0.95,
            height: deviceHeight * 0.16,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "O seu numero:",
                  style: TextStyle(
                      fontSize: deviceWidth * 0.1 * _data.count,
                      fontWeight: FontWeight.normal,
                      color: Theme.of(context).accentColor),
                ),
                Text(
                  "969869123",
                  style: TextStyle(
                      fontSize: deviceWidth * 0.135 * _data.count,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).accentColor),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border:
                    Border.all(width: 3, color: Theme.of(context).accentColor)),
            width: deviceWidth * 0.95,
            height: deviceHeight * 0.15,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColorDark,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChamadasNaoAtendidasPage()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      image: new DecorationImage(
                          image: ExactAssetImage(
                              'assets/chamadas_nao_atendidas.png'),
                          fit: BoxFit.contain),
                    ),
                    width: deviceWidth * 0.3,
                    height: deviceHeight * 0.2,
                  ),
                  Container(
                    child: Text(
                      "Chamadas\nNão Atendidas",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: deviceWidth * 0.075 * _data.count,
                          fontWeight: FontWeight.normal,
                          color: Theme.of(context).accentColor),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: deviceWidth * 0.95,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: deviceWidth * 0.47,
                  height: deviceHeight * 0.165,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          width: 3, color: Theme.of(context).accentColor)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColorDark,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TecladoNumericoPage()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: ExactAssetImage('assets/teclado.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          width: 100,
                          height: deviceHeight * 0.1,
                        ),
                        Text(
                          "Teclado",
                          style: TextStyle(
                              fontSize: deviceWidth * 0.08 * _data.count,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).accentColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: deviceHeight * 0.165,
                  width: deviceWidth * 0.47,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                          width: 3, color: Theme.of(context).accentColor)),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactsPage()));
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColorDark,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: new BoxDecoration(
                            image: new DecorationImage(
                              image: ExactAssetImage('assets/contactos_2.png'),
                              fit: BoxFit.contain,
                            ),
                          ),
                          height: deviceHeight * 0.1,
                        ),
                        Text(
                          "Contactos",
                          style: TextStyle(
                              fontSize: deviceWidth * 0.08 * _data.count,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).accentColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.015,
          )
        ],
      )),
    );
  }
}
