import 'package:aipc/components/Navigation.dart';
import 'package:aipc/components/registochamadasitem.dart';
import 'package:flutter/material.dart';

class RegistoChamadasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Registo Chamadas",
            style: TextStyle(fontSize: 35),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RegistoChamadaItem(),
            RegistoChamadaItem(),
            RegistoChamadaItem(),
            RegistoChamadaItem(),
            RegistoChamadaItem(),
          ],
        )),
        bottomNavigationBar: BottomAppBar(
            color: Colors.white,
            child: navButtons(
              goBack: () {
                Navigator.pop(context);
              },
            )));
  }
}
