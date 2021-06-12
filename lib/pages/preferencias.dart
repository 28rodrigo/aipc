import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:toast/toast.dart';

import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/contacto_data.dart';
import 'package:aipc/functions/notifier.dart';
import 'package:aipc/pages/editarcontacto.dart';
import 'package:aipc/pages/gestos.dart';
import 'package:aipc/pages/tipoteclado.dart';

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
        // ignore: missing_return
        onWillPop: () async {
          Future.value(false);
        },
        child: SwipeDetector(
          onSwipeRight: () {
            if (_data.gesture == 1) Navigator.pop(context);
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
                            builder: (context) => TipoTecladoPage()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => GestosPage()));
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
              ),
              SizedBox(
                width: deviceWidth * 0.9,
                height: deviceHeight * 0.1,
                child: ElevatedButton(
                  onPressed: () async {
                    try {
                      var status = await Permission.contacts.request();
                      print(status);
                      if (status.isGranted && _data.importados == 0) {
                        print('hello');
                        Iterable<Contact> contacts =
                            await ContactsService.getContacts();
                        contacts.forEach((element) {
                          print(element.displayName);
                          _data.contactos.maxId++;
                          _data.contactos.contactos.add({
                            "Id": _data.contactos.maxId.toString(),
                            "nome": element.displayName,
                            "numero": element.phones.first.value,
                            "url":
                                "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fdefault-user-image.png?alt=media&token=ea26f148-0f78-47b5-87f4-7e529bcee727"
                          });
                        });
                        _data.addContact();
                        print(contacts);
                        _data.changeImportados();
                        Toast.show("Contactos importados com sucesso!", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      } else {
                        Toast.show("Contactos já importados!", context,
                            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                      }
                    } catch (e) {
                      Toast.show("Erro ao importar Contactos!", context,
                          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
                    }
                  },
                  child: Text(
                    "Importar Contactos",
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
      ),
      bottomNavigationBar: BottomAppBar(child: BackNavigation(
        goBack: () {
          Navigator.pop(context);
        },
      )),
    );
  }
}
