import 'package:flutter/material.dart';

// ignore: camel_case_types
class backNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          color: Theme.of(context).primaryColorDark),
      child: Container(
          height: deviceHeight * 0.1,
          decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
          child: TextButton(
            style: ButtonStyle(alignment: Alignment.topCenter),
            child: Icon(
              Icons.arrow_back,
              size: 70,
              color: Colors.black,
            ),
            onPressed: () {},
          )),
    );
  }
}
