import 'package:flutter/material.dart';

class ContactsItemVarios extends StatelessWidget {
  final int itemType;

  ContactsItemVarios({@required this.itemType});
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    if (itemType == 1) {
      return Column(
        children: [
          Container(
            decoration: new BoxDecoration(
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            width: deviceWidth * 0.48,
            height: deviceHeight * 0.25,
            child: Icon(
              Icons.add_call,
              size: deviceWidth * 0.3,
            ),
          ),
          Container(
              width: deviceWidth * 0.48,
              height: deviceHeight * 0.1,
              decoration: new BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Adicionar\nContacto",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ))
        ],
      );
    } else if (itemType == 2) {
      return Column(
        children: [
          Container(
            decoration: new BoxDecoration(
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            width: deviceWidth * 0.48,
            height: deviceHeight * 0.25,
            child: Icon(
              Icons.search,
              size: deviceWidth * 0.3,
            ),
          ),
          Container(
              width: deviceWidth * 0.48,
              height: deviceHeight * 0.1,
              decoration: new BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Pesquisar",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ))
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            decoration: new BoxDecoration(
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            width: deviceWidth * 0.48,
            height: deviceHeight * 0.25,
            child: Icon(
              Icons.euro,
              size: deviceWidth * 0.3,
            ),
          ),
          Container(
              width: deviceWidth * 0.48,
              height: deviceHeight * 0.1,
              decoration: new BoxDecoration(
                color: Colors.blue,
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: FittedBox(
                fit: BoxFit.contain,
                child: Text(
                  "Consultar\nSaldo",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ))
        ],
      );
    }
  }
}
