import 'package:flutter/material.dart';

// ignore: camel_case_types
class NavigationTeclado extends StatelessWidget {
  final void Function() goBack;
  final void Function() goOK;
  final void Function() goVoice;

  NavigationTeclado({this.goBack, this.goOK, this.goVoice});
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: deviceWidth * 0.33,
          height: deviceHeight * 0.1,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.black),
            color: Theme.of(context).primaryColorDark,
          ),
          child: TextButton(
            style: ButtonStyle(alignment: Alignment.topCenter),
            child: Icon(
              Icons.check_circle_outline_outlined,
              size: 70,
              color: Colors.green,
            ),
            onPressed: goOK,
          ),
        ),
        Container(
            width: deviceWidth * 0.33,
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
        Container(
            width: deviceWidth * 0.34,
            height: deviceHeight * 0.1,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                color: Theme.of(context).primaryColorDark),
            child: TextButton(
              style: ButtonStyle(alignment: Alignment.topCenter),
              child: Icon(
                Icons.mic,
                size: 70,
                color: Colors.black,
              ),
              onPressed: () {},
            )),
      ],
    );
  }
}
