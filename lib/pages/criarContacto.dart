import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';
import 'package:toast/toast.dart';

import 'package:aipc/components/navigationTecladoPesquisa.dart';
import 'package:aipc/functions/notifier.dart';
import 'package:aipc/pages/teclado.dart';
import 'package:aipc/pages/tecladoNumerico2.dart';

class CriarContacto extends StatefulWidget {
  CriarContacto();
  @override
  _CriarContactoState createState() => _CriarContactoState();
}

class _CriarContactoState extends State<CriarContacto> {
  var storage = FirebaseStorage.instance;
  String nome = "";
  String numero = "";
  String url = "";
  var myController = TextEditingController();
  var myControllerNumber = TextEditingController();
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future uploadFile() async {
    try {
      String imageName;
      imageName =
          "image:" + DateTime.now().toString().replaceAll('.', '-') + ".png";
      TaskSnapshot snapshot =
          await storage.ref().child("Imagens/$imageName").putFile(_image);
      if (snapshot.state == TaskState.success) {
        var _url = await snapshot.ref.getDownloadURL();
        setState(() {
          url = _url;
          print(url);
        });

        Toast.show("Contacto criado com sucesso!", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      } else {
        Toast.show("Erro ao criar contacto!", context,
            duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
      }
    } catch (e) {
      Toast.show("Erro ao criar contacto!", context,
          duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
    }
  }

  void setNome(_nome) {
    setState(() {
      nome = _nome;
    });
  }

  void setNumero(_numero) {
    setState(() {
      numero = _numero;
    });
  }

  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Criar Contacto",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: SwipeDetector(
          onSwipeRight: () {
            if (_data.gesture == 1) Navigator.pop(context);
          },
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: deviceWidth * 0.55,
                    height: deviceWidth * 0.1,
                  ),
                  MergeSemantics(
                    child: Container(
                      width: deviceWidth * 0.55,
                      height: deviceWidth * 0.55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                              color: Theme.of(context).accentColor, width: 2)),
                      child: Semantics(
                        label: "Adicionar Imagem",
                        child: MergeSemantics(
                          child: TextButton(
                            onPressed: () {
                              getImage();
                            },
                            child: _image == null
                                ? Icon(
                                    Icons.person_add_alt_1_sharp,
                                    size: deviceHeight * 0.2,
                                    color: Theme.of(context).accentColor,
                                  )
                                : Image.file(_image),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: deviceWidth * 0.55,
                    height: deviceWidth * 0.1,
                  ),
                  Column(
                    children: [
                      Text(
                        "NOME:",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.1 * _data.count,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).accentColor),
                      ),
                      MergeSemantics(
                        child: Container(
                          width: deviceWidth * 0.95,
                          height: deviceHeight * 0.1,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Theme.of(context).accentColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: _data.tipoTeclado == 0
                              ? Semantics(
                                  label: "Inserir Nome",
                                  child: MergeSemantics(
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TecladoPage(
                                                        setNome: setNome,
                                                      )));
                                        },
                                        child: Text(nome,
                                            style: TextStyle(
                                                fontSize: deviceWidth *
                                                    0.1 *
                                                    _data.count,
                                                fontWeight: FontWeight.w600,
                                                color: Theme.of(context)
                                                    .accentColor))),
                                  ),
                                )
                              : Semantics(
                                  label: "Inserir Nome",
                                  child: MergeSemantics(
                                    child: TextField(
                                      controller: myController,
                                      enabled: true,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                      ),
                                      style: TextStyle(
                                          fontSize: 40 * _data.count,
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context).accentColor),
                                    ),
                                  ),
                                ),
                        ),
                      ),
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
                      MergeSemantics(
                        child: Container(
                          width: deviceWidth * 0.95,
                          height: deviceHeight * 0.1,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Theme.of(context).accentColor),
                              borderRadius: BorderRadius.circular(10)),
                          child: _data.tipoTeclado == 0
                              ? Semantics(
                                  label: "Inserir Numero",
                                  child: MergeSemantics(
                                    child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      TecladoNumerico2Page(
                                                        setNumero: setNumero,
                                                      )));
                                        },
                                        child: Text(
                                          numero,
                                          style: TextStyle(
                                              fontSize: deviceWidth *
                                                  0.1 *
                                                  _data.count,
                                              fontWeight: FontWeight.w600,
                                              color: Theme.of(context)
                                                  .accentColor),
                                        )),
                                  ),
                                )
                              : Semantics(
                                  label: "Inserir Numero",
                                  child: MergeSemantics(
                                    child: TextField(
                                      controller: myControllerNumber,
                                      enabled: true,
                                      keyboardType: TextInputType.number,
                                      textAlignVertical:
                                          TextAlignVertical.center,
                                      textAlign: TextAlign.center,
                                      decoration: InputDecoration(
                                          border: InputBorder.none),
                                      style: TextStyle(
                                          fontSize: 40 * _data.count,
                                          fontWeight: FontWeight.w600,
                                          color: Theme.of(context).accentColor),
                                    ),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child: NavigationTecladoPesquisa(
          type: 2,
          goBack: () {
            Navigator.pop(context);
          },
          goOK: () async {
            if ((nome == "" || numero == "") && _data.tipoTeclado == 0) {
              Toast.show("Por Favor, preencha todos os campos!", context,
                  duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
              return;
            }
            if ((myController.text == "" || myControllerNumber.text == "") &&
                _data.tipoTeclado == 1) {
              Toast.show("Por Favor, preencha todos os campos!", context,
                  duration: Toast.LENGTH_LONG, gravity: Toast.BOTTOM);
              return;
            }
            var status = await Permission.unknown.request();
            print(status);
            if (status.isGranted && _image != null) {
              await uploadFile();
            }

            _data.contactos.maxId++;
            _data.contactos.contactos.add({
              "id": _data.contactos.maxId.toString(),
              "nome": _data.tipoTeclado == 0 ? nome : myController.text,
              "numero":
                  _data.tipoTeclado == 0 ? numero : myControllerNumber.text,
              "url": _image == null
                  ? "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fdefault-user-image.png?alt=media&token=ea26f148-0f78-47b5-87f4-7e529bcee727"
                  : url
            });
            _data.addContact();
            setState(() {
              nome = "";
              numero = "";
              myController.text = '';
              myControllerNumber.text = '';
            });

            Navigator.pop(context);
          },
        )));
  }
}
