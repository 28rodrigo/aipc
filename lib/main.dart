import 'package:aipc/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class ContactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
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
        title: Text(
          "Contactos",
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        image: new DecorationImage(
                          image: ExactAssetImage('assets/quim.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: deviceWidth * 0.45,
                      height: deviceHeight * 0.25,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Quim",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.085,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        image: new DecorationImage(
                          image: ExactAssetImage('assets/quim.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: deviceWidth * 0.45,
                      height: deviceHeight * 0.25,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Quim",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.085,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        image: new DecorationImage(
                          image: ExactAssetImage('assets/quim.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: deviceWidth * 0.45,
                      height: deviceHeight * 0.25,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Quim",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.085,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(width: 3, color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                        image: new DecorationImage(
                          image: ExactAssetImage('assets/quim.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: deviceWidth * 0.45,
                      height: deviceHeight * 0.25,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 5),
                      child: Text(
                        "Quim",
                        style: TextStyle(
                            fontSize: deviceWidth * 0.085,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(width: 1, color: Colors.black)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 90,
                height: 70,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black)),
                child: TextButton(
                  child: Icon(
                    Icons.arrow_back,
                    size: 50,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                  width: 90,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black)),
                  child: TextButton(
                    child: Icon(
                      Icons.arrow_downward,
                      size: 50,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  )),
              Container(
                  width: 90,
                  height: 70,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black)),
                  child: TextButton(
                    child: Icon(
                      Icons.arrow_upward,
                      size: 50,
                      color: Colors.black,
                    ),
                    onPressed: () {},
                  )),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
