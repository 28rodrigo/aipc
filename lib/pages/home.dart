import 'package:aipc/functions/makecalls.dart';
import 'package:aipc/pages/accessSettings.dart';
import 'package:aipc/pages/chamadasnaoatendidas.dart';
import 'package:aipc/pages/contactos.dart';
import 'package:aipc/pages/tecladoNumerico.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          "Página Principal",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.settings,
                size: deviceHeight * 0.04,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AccessSettings()));
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
                  border: Border.all(width: 3, color: Colors.black),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColorDark,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "21:30",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: deviceHeight * 0.08,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "20 de Abril de 2021",
                        style: TextStyle(
                            color: Colors.white, fontSize: deviceHeight * 0.04),
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
              border: Border.all(width: 3, color: Colors.black),
            ),
            child: ElevatedButton(
              onPressed: () {
                //FlutterPhoneDirectCaller.callNumber('912684074');
                callnow('tel://912684074');
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
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
                          fontSize: deviceWidth * 0.2,
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
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 3, color: Colors.black)),
            width: deviceWidth * 0.95,
            height: deviceHeight * 0.16,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "O seu numero:",
                  style: TextStyle(
                      fontSize: deviceWidth * 0.1,
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
                Text(
                  "969869123",
                  style: TextStyle(
                      fontSize: deviceWidth * 0.135,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(width: 3, color: Colors.black)),
            width: deviceWidth * 0.95,
            height: deviceHeight * 0.15,
            alignment: Alignment.center,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
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
                          fontSize: deviceWidth * 0.075,
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
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
                      border: Border.all(width: 3, color: Colors.black)),
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
                              fontSize: deviceWidth * 0.08,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
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
                      border: Border.all(width: 3, color: Colors.black)),
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
                              fontSize: deviceWidth * 0.08,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
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
