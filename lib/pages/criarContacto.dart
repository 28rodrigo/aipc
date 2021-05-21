import 'dart:io';

import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/components/navigationTecladoPesquisa.dart';
import 'package:aipc/functions/contacto_data.dart';
import 'package:aipc/pages/teclado.dart';
import 'package:aipc/pages/tecladoNumerico.dart';
import 'package:aipc/pages/tecladoNumerico2.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CriarContacto extends StatefulWidget {
  Contactos contactos;

  CriarContacto({@required this.contactos});
  @override
  _CriarContactoState createState() => _CriarContactoState();
}

class _CriarContactoState extends State<CriarContacto> {
  var storage = FirebaseStorage.instance;

  String nome = "";
  String numero = "";
  String url = "";

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    String imageName;
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
    imageName = "image:" + DateTime.now().toIso8601String();
    TaskSnapshot snapshot =
        await storage.ref().child("Imagens/$imageName").putFile(_image);
    if (snapshot.state == TaskState.success) {
      url = await snapshot.ref.getDownloadURL();
      final snackBar = SnackBar(content: Text('Yay! Successo'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      final snackBar = SnackBar(content: Text('Ocorreu um Erro!'));
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Criar Contacto",
            style: TextStyle(fontSize: 40),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: deviceWidth * 0.55,
                height: deviceWidth * 0.55,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black, width: 2)),
                child: TextButton(
                  onPressed: () {
                    getImage();
                  },
                  child: _image == null
                      ? Icon(
                          Icons.person_add_alt_1_sharp,
                          size: deviceHeight * 0.2,
                          color: Colors.black,
                        )
                      : Image.file(_image),
                ),
              ),
              Column(
                children: [
                  Text(
                    "NOME:",
                    style: TextStyle(
                        fontSize: deviceWidth * 0.1,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: deviceWidth * 0.95,
                      height: deviceHeight * 0.1,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TecladoPage(
                                          setNome: setNome,
                                        )));
                          },
                          child: Text(nome,
                              style: TextStyle(
                                  fontSize: deviceWidth * 0.1,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)))),
                  SizedBox(
                    height: deviceHeight * 0.065,
                  ),
                  Text(
                    "NUMERO:",
                    style: TextStyle(
                        fontSize: deviceWidth * 0.1,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                      width: deviceWidth * 0.95,
                      height: deviceHeight * 0.1,
                      decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.black),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TecladoNumerico2Page(
                                          setNumero: setNumero,
                                        )));
                          },
                          child: Text(
                            numero,
                            style: TextStyle(
                                fontSize: deviceWidth * 0.1,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
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
            setState(() {
              widget.contactos.maxId++;
              widget.contactos.contactos.add({
                "id": widget.contactos.maxId.toString(),
                "nome": nome,
                "numero": numero,
                "url": _image == null
                    ? "https://firebasestorage.googleapis.com/v0/b/aipc-e8864.appspot.com/o/Imagens%2Fdefault-user-image.png?alt=media&token=ea26f148-0f78-47b5-87f4-7e529bcee727"
                    : url
              });
              nome = "";
              numero = "";
            });

            Navigator.pop(context);
          },
        )));
  }
}
