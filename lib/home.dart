import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Página Principal",
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
        actions: [
          Container(
            decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: new DecorationImage(
                image: ExactAssetImage('assets/settings.png'),
                fit: BoxFit.contain,
              ),
            ),
            width: 45,
            height: 10,
          ),
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
              TextButton(
                onPressed: () {},
                child: Container(
                  height: deviceHeight * 0.15,
                  width: deviceWidth * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 3, color: Colors.black),
                    color: Colors.blueGrey,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "21:30",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "20 de Abril de 2021",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              height: deviceHeight * 0.15,
              width: deviceWidth * 0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 3, color: Colors.black),
              ),
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
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 3, color: Colors.black)),
            width: deviceWidth * 0.9,
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
          TextButton(
            onPressed: () {},
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 3, color: Colors.black)),
              width: deviceWidth * 0.9,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Container(
                    width: deviceWidth * 0.5,
                    height: deviceHeight * 0.15,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text(
                        "Chamadas\nNão Atendidas",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.normal, color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                onPressed: () {},
                child: Container(
                  width: deviceWidth * 0.4,
                  height: deviceHeight * 0.18,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 3, color: Colors.black)),
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
                        height: deviceHeight * 0.09,
                      ),
                      Text(
                        "Teclado",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.09,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Container(
                  height: deviceHeight * 0.18,
                  width: deviceWidth * 0.5,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 3, color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: new BoxDecoration(
                          image: new DecorationImage(
                            image: ExactAssetImage('assets/contactos.png'),
                            fit: BoxFit.contain,
                          ),
                        ),
                        width: 100,
                        height: deviceHeight * 0.09,
                      ),
                      Text(
                        "Contactos",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.09,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
