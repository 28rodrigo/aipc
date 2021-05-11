import 'package:aipc/components/backNavigation.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColorDark,
        title: Text(
          "Definições",
          style: TextStyle(fontSize: 40),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            width: deviceWidth * 0.9,
            height: deviceHeight * 0.1,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Esquema de Cores",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black, fontSize: deviceWidth * 0.08),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  side: BorderSide(width: 1.5, color: Colors.black)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: deviceWidth * 0.2,
                height: deviceHeight * 0.1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                    size: deviceWidth * 0.1,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      side: BorderSide(width: 1.5, color: Colors.black)),
                ),
              ),
              SizedBox(
                width: deviceWidth * 0.5,
                height: deviceHeight * 0.1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Tamanho da letra",
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
                width: deviceWidth * 0.2,
                height: deviceHeight * 0.1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                    size: deviceWidth * 0.1,
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.grey[300],
                      side: BorderSide(width: 1.5, color: Colors.black)),
                ),
              )
            ],
          ),
          SizedBox(
            width: deviceWidth * 0.9,
            height: deviceHeight * 0.1,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "Editar Botão S.O.S",
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
              onPressed: () {},
              child: Text(
                "Registo de Chamadas",
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
              onPressed: () {},
              child: Text(
                "Sobre a APP",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black, fontSize: deviceWidth * 0.08),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Colors.grey[300],
                  side: BorderSide(width: 1.5, color: Colors.black)),
            ),
          )
        ],
      )),
      bottomNavigationBar: BottomAppBar(child: backNavigation()),
    );
  }
}