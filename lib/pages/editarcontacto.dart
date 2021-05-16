import 'package:aipc/components/backNavigation.dart';
import 'package:flutter/material.dart';

class EditarContactoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myControllerNome = TextEditingController();
    myControllerNome.text = "Quim";
    final myControllerNumero = TextEditingController();
    myControllerNumero.text = "919191919";
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Editar Contacto",
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
                  border: Border.all(color: Colors.black, width: 2),
                  image: new DecorationImage(
                    image: ExactAssetImage('assets/quim.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                alignment: Alignment.topRight,
                child: TextButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.edit,
                    size: deviceHeight * 0.08,
                    color: Colors.amber,
                  ),
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
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        TextField(
                          textAlign: TextAlign.center,
                          controller: myControllerNome,
                          enabled: false,
                          decoration: InputDecoration(border: InputBorder.none),
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
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
                    decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.black),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        TextField(
                          textAlign: TextAlign.center,
                          controller: myControllerNumero,
                          enabled: false,
                          decoration: InputDecoration(border: InputBorder.none),
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(child: BackNavigation(goBack: () {
          Navigator.pop(context);
        })));
  }
}
