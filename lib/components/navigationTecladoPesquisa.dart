import 'package:aipc/functions/makecalls.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class navigationTecladoPesquisa extends StatelessWidget {
  final void Function() goBack;
  final String callUrl;

  navigationTecladoPesquisa({@required this.goBack, this.callUrl});
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
            onPressed: () {
              callnow(callUrl);
            },
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
