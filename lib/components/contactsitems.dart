import 'dart:ui';

import 'package:flutter/material.dart';

class ContactsItemVarios extends StatelessWidget {
  final int itemType;
  final void Function() onClick;
  ContactsItemVarios({@required this.itemType, @required this.onClick});
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    if (itemType == 1) {
      return Semantics(
        label: "Adicionar Contactos",
        child: MergeSemantics(
          child: Column(
            children: [
              TextButton(
                onPressed: onClick,
                child: Container(
                  decoration: new BoxDecoration(
                    border: Border.all(
                        width: 3, color: Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: deviceWidth * 0.45,
                  height: deviceHeight * 0.24,
                  child: Icon(
                    Icons.add_call,
                    size: deviceWidth * 0.3,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Container(
                  width: deviceWidth * 0.45,
                  height: deviceHeight * 0.1,
                  decoration: new BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    border: Border.all(
                        width: 1, color: Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Adicionar\nContacto",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).accentColor),
                    ),
                  ))
            ],
          ),
        ),
      );
    } else if (itemType == 2) {
      return Semantics(
        label: "Pesquisar",
        child: MergeSemantics(
          child: Column(
            children: [
              TextButton(
                onPressed: onClick,
                child: Container(
                  decoration: new BoxDecoration(
                    border: Border.all(
                        width: 3, color: Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: deviceWidth * 0.45,
                  height: deviceHeight * 0.24,
                  child: Icon(
                    Icons.search,
                    size: deviceWidth * 0.3,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Container(
                  width: deviceWidth * 0.45,
                  height: deviceHeight * 0.1,
                  decoration: new BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    border: Border.all(
                        width: 1, color: Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Pesquisar",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).accentColor),
                    ),
                  ))
            ],
          ),
        ),
      );
    } else {
      return Semantics(
        label: "Consultar Saldo",
        child: MergeSemantics(
          child: Column(
            children: [
              TextButton(
                onPressed: onClick,
                child: Container(
                  decoration: new BoxDecoration(
                    border: Border.all(
                        width: 3, color: Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: deviceWidth * 0.45,
                  height: deviceHeight * 0.24,
                  child: Icon(
                    Icons.euro,
                    size: deviceWidth * 0.3,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Container(
                  width: deviceWidth * 0.45,
                  height: deviceHeight * 0.1,
                  decoration: new BoxDecoration(
                    color: Theme.of(context).primaryColorDark,
                    border: Border.all(
                        width: 1, color: Theme.of(context).accentColor),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(top: 5, bottom: 5),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      "Consultar\nSaldo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).accentColor),
                    ),
                  ))
            ],
          ),
        ),
      );
    }
  }
}
