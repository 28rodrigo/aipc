import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/components/navigationTeclado.dart';
import 'package:aipc/pages/editarcontacto.dart';
import 'package:flutter/material.dart';

class ContactoDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Quim",
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
                    image: new DecorationImage(
                      image: ExactAssetImage('assets/quim.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black, width: 2)),
              ),
              Container(
                alignment: Alignment.center,
                width: deviceWidth * 0.8,
                height: deviceHeight * 0.12,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    color: Theme.of(context).primaryColorDark,
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditarContactoPage()));
                    },
                    style: ButtonStyle(alignment: Alignment.topCenter),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.edit,
                          size: 70,
                          color: Colors.white,
                        ),
                        Text(
                          "EDITAR",
                          style: TextStyle(
                              fontSize: deviceWidth * 0.12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Container(
                alignment: Alignment.center,
                width: deviceWidth * 0.8,
                height: deviceHeight * 0.25,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.black),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12)),
                child: TextButton(
                    onPressed: () {},
                    style: ButtonStyle(alignment: Alignment.topCenter),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.call,
                          size: 70,
                          color: Colors.white,
                        ),
                        Text(
                          "LIGAR",
                          style: TextStyle(
                              fontSize: deviceWidth * 0.18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(child: BackNavigation(
          goBack: () {
            Navigator.pop(context);
          },
        )));
  }
}
