import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/pages/editarcontacto.dart';
import 'package:aipc/pages/registoChamadas.dart';
import 'package:flutter/material.dart';

class PreferenciasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          "Definições",
          style: TextStyle(fontSize: 40),
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
                          builder: (context) => EditarContactoPage()));
                },
                child: Text(
                  "Tipo de Teclado",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black, fontSize: deviceWidth * 0.08),
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
                      color: Colors.black, fontSize: deviceWidth * 0.08),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey[300],
                    side: BorderSide(width: 1.5, color: Colors.black)),
              ),
            ),
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
