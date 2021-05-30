import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/contacto_data.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/pages/editarcontacto.dart';
import 'package:aipc/pages/registoChamadas.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreferenciasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    DataProvider _data = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        iconTheme: IconThemeData(color: Theme.of(context).accentColor),
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          "Preferências",
          style: TextStyle(
              fontSize: 40 * _data.count, color: Theme.of(context).accentColor),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          Future.value(false);
        },
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: deviceWidth * 0.9,
              height: deviceHeight * 0.1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditarContactoPage(
                                contactDetail: new Contactos().sos,
                                contactos: new Contactos(),
                              )));
                },
                child: Text(
                  "Tipo de Teclado",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: deviceWidth * 0.08 * _data.count),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300],
                    side: BorderSide(width: 1.5, color: Colors.black)),
              ),
            ),
            SizedBox(
              width: deviceWidth * 0.9,
              height: deviceHeight * 0.1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistoChamadasPage()));
                },
                child: Text(
                  "Ativar Gestos",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: deviceWidth * 0.08 * _data.count),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300],
                    side: BorderSide(width: 1.5, color: Colors.black)),
              ),
            ),
            SizedBox(
              width: deviceWidth * 0.9,
              height: deviceHeight * 0.1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditarContactoPage(
                                contactDetail: new Contactos().sos,
                                contactos: new Contactos(),
                              )));
                },
                child: Text(
                  "Editar Botão S.O.S",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: deviceWidth * 0.08 * _data.count),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300],
                    side: BorderSide(width: 1.5, color: Colors.black)),
              ),
            )
          ],
        )),
      ),
      bottomNavigationBar: BottomAppBar(child: BackNavigation(
        goBack: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
