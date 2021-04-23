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

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contactos'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/face.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/face.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/face.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/face.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/face.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    width: 150,
                    height: 150,
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      image: new DecorationImage(
                        image: ExactAssetImage('assets/face.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    width: 150,
                    height: 150,
                  ),
                ],
              ),
            )
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
