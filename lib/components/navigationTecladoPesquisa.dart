import 'package:aipc/functions/makecalls.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class NavigationTecladoPesquisa extends StatelessWidget {
  final void Function() goBack;
  final void Function() goOK;
  final int type;

  NavigationTecladoPesquisa(
      {@required this.goBack, @required this.goOK, @required this.type});
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: type == 1
          ? [
              Container(
                width: deviceWidth * 0.5,
                height: deviceHeight * 0.1,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  color: Theme.of(context).primaryColorDark,
                ),
                child: TextButton(
                  child: Icon(
                    Icons.call,
                    size: 70,
                    color: Colors.green,
                  ),
                  onPressed: goOK,
                ),
              ),
              Container(
                  width: deviceWidth * 0.5,
                  height: deviceHeight * 0.1,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      color: Theme.of(context).primaryColorDark),
                  child: TextButton(
                    style: ButtonStyle(alignment: Alignment.topCenter),
                    child: Icon(
                      Icons.cancel,
                      size: 70,
                      color: Colors.red[800],
                    ),
                    onPressed: goBack,
                  )),
            ]
          : [
              Container(
                width: deviceWidth * 0.5,
                height: deviceHeight * 0.1,
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.black),
                  color: Theme.of(context).primaryColorDark,
                ),
                child: TextButton(
                  child: Icon(
                    Icons.check_circle_outline_outlined,
                    size: 70,
                    color: Colors.green,
                  ),
                  onPressed: goOK,
                ),
              ),
              Container(
                  width: deviceWidth * 0.5,
                  height: deviceHeight * 0.1,
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.black),
                      color: Theme.of(context).primaryColorDark),
                  child: TextButton(
                    style: ButtonStyle(alignment: Alignment.topCenter),
                    child: Icon(
                      Icons.cancel,
                      size: 70,
                      color: Colors.red[800],
                    ),
                    onPressed: goBack,
                  )),
            ],
    );
  }
}
