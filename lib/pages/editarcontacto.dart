import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/components/navigationTecladoPesquisa.dart';
import 'package:aipc/functions/contacto_data.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/pages/contactos.dart';
import 'package:aipc/pages/home.dart';
import 'package:aipc/pages/teclado.dart';
import 'package:aipc/pages/tecladoNumerico2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditarContactoPage extends StatefulWidget {
  final Map<String, String> contactDetail;
  Contactos contactos;

  EditarContactoPage({@required this.contactDetail, @required this.contactos});

  @override
  _EditarContactoPageState createState() => _EditarContactoPageState();
}

class _EditarContactoPageState extends State<EditarContactoPage> {
  String nome = "";
  String numero = "";
  String url = "";
  int aux = 0;
  void setNome(_nome) {
    print(nome);
    setState(() {
      nome = _nome;
    });
    print(nome);
  }

  void setNumero(_numero) {
    setState(() {
      numero = _numero;
    });
  }

  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    if (aux == 0) {
      setState(() {
        nome = widget.contactDetail.values.elementAt(1);
        numero = widget.contactDetail.values.elementAt(2);
      });
      aux++;
    }
    final myControllerNome = TextEditingController();
    myControllerNome.text = widget.contactDetail.values.elementAt(1);
    final myControllerNumero = TextEditingController();
    myControllerNumero.text = widget.contactDetail.values.elementAt(2);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Editar Contacto",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              widget.contactDetail.values.elementAt(3) != "Icon-Euro"
                  ? widget.contactDetail.values.elementAt(0) != "0112"
                      ? Container(
                          width: deviceWidth * 0.55,
                          height: deviceWidth * 0.55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Theme.of(context).accentColor, width: 2),
                            image: new DecorationImage(
                              image: NetworkImage(
                                  widget.contactDetail.values.elementAt(3)),
                              fit: BoxFit.cover,
                            ),
                          ),
                          alignment: Alignment.topRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.edit,
                              size: deviceHeight * 0.05,
                              color: Colors.red,
                            ),
                          ),
                        )
                      : Container(
                          width: deviceWidth * 0.55,
                          height: deviceWidth * 0.55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                                color: Theme.of(context).accentColor, width: 2),
                            image: new DecorationImage(
                              image: NetworkImage(
                                  widget.contactDetail.values.elementAt(3)),
                              fit: BoxFit.cover,
                            ),
                          ),
                          alignment: Alignment.topRight,
                        )
                  : Container(
                      width: deviceWidth * 0.55,
                      height: deviceWidth * 0.55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Theme.of(context).accentColor, width: 2)),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.euro,
                        size: deviceWidth * 0.45,
                      )),
              Column(
                children: [
                  Text(
                    "NOME:",
                    style: TextStyle(
                        fontSize: deviceWidth * 0.1 * _data.count,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).accentColor),
                  ),
                  Container(
                      width: deviceWidth * 0.95,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Theme.of(context).accentColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TecladoPage(
                                          setNome: setNome,
                                          startValue: widget
                                              .contactDetail.values
                                              .elementAt(1),
                                        )));
                          },
                          child: Text(nome,
                              style: TextStyle(
                                  fontSize: deviceWidth * 0.1 * _data.count,
                                  fontWeight: FontWeight.w600,
                                  color: Theme.of(context).accentColor)))),
                  SizedBox(
                    height: deviceHeight * 0.065,
                  ),
                  Text(
                    "NUMERO:",
                    style: TextStyle(
                        fontSize: deviceWidth * 0.1 * _data.count,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).accentColor),
                  ),
                  Container(
                      width: deviceWidth * 0.95,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Theme.of(context).accentColor),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TecladoNumerico2Page(
                                          setNumero: setNumero,
                                          startValue: widget
                                              .contactDetail.values
                                              .elementAt(2),
                                        )));
                          },
                          child: Text(
                            numero,
                            style: TextStyle(
                                fontSize: deviceWidth * 0.1 * _data.count,
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).accentColor),
                          ))),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: NavigationTecladoPesquisa(
          type: 2,
          goBack: () {
            Navigator.pop(context);
          },
          goOK: () {
            // uploadFile();
            setState(() {
              //widget.contactos.maxId++;
              widget.contactos.contactos.removeWhere((element) =>
                  element.values.elementAt(0) ==
                  widget.contactDetail.values.elementAt(0));

              widget.contactos.contactos.add({
                "id": widget.contactDetail.values.elementAt(0),
                "nome": nome,
                "numero": numero,
                "url": widget.contactDetail.values.elementAt(3)
              });
              nome = "";
              numero = "";
              widget.contactos.contactos.sort((a, b) =>
                  a.values.elementAt(1).compareTo(b.values.elementAt(1)));
            });

            Navigator.pop(context);
          },
        )));
  }
}
