import 'package:flutter/material.dart';

// ignore: camel_case_types
class navButtons extends StatelessWidget {
  final void Function() goBack;
  final void Function() increase;
  final void Function() decrease;

  navButtons(
      {@required this.goBack,
      @required this.increase,
      @required this.decrease});
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Theme.of(context).accentColor),
          color: Theme.of(context).primaryColorDark),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: deviceWidth * 0.33,
            height: deviceHeight * 0.1,
            decoration: BoxDecoration(
                border:
                    Border.all(width: 1, color: Theme.of(context).accentColor)),
            child: TextButton(
              style: ButtonStyle(alignment: Alignment.topCenter),
              child: Icon(
                Icons.arrow_back,
                size: 70,
                color: Theme.of(context).accentColor,
              ),
              onPressed: goBack,
            ),
          ),
          Container(
              width: deviceWidth * 0.33,
              height: deviceHeight * 0.1,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Theme.of(context).accentColor),
                  color: Theme.of(context).primaryColorDark),
              child: TextButton(
                style: ButtonStyle(alignment: Alignment.topCenter),
                child: Icon(
                  Icons.arrow_downward,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: increase,
              )),
          Container(
              width: deviceWidth * 0.33,
              height: deviceHeight * 0.1,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Theme.of(context).accentColor),
                  color: Theme.of(context).primaryColorDark),
              child: TextButton(
                style: ButtonStyle(alignment: Alignment.topCenter),
                child: Icon(
                  Icons.arrow_upward,
                  size: 70,
                  color: Theme.of(context).accentColor,
                ),
                onPressed: decrease,
              )),
        ],
      ),
    );
  }
}
