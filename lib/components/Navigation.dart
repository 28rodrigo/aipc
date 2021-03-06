import 'package:flutter/material.dart';

class NavButtons extends StatelessWidget {
  final void Function() goBack;
  final void Function() increase;
  final void Function() decrease;

  NavButtons(
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
          MergeSemantics(
            child: Container(
              width: deviceWidth * 0.33,
              height: deviceHeight * 0.1,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Theme.of(context).accentColor)),
              child: Semantics(
                label: "Voltar",
                child: MergeSemantics(
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
              ),
            ),
          ),
          MergeSemantics(
            child: Container(
                width: deviceWidth * 0.33,
                height: deviceHeight * 0.1,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Theme.of(context).accentColor),
                    color: Theme.of(context).primaryColorDark),
                child: Semantics(
                  label: "Seta para baixo",
                  child: MergeSemantics(
                    child: TextButton(
                      style: ButtonStyle(alignment: Alignment.topCenter),
                      child: Icon(
                        Icons.arrow_downward,
                        size: 70,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: increase,
                    ),
                  ),
                )),
          ),
          MergeSemantics(
            child: Container(
                width: deviceWidth * 0.33,
                height: deviceHeight * 0.1,
                decoration: BoxDecoration(
                    border: Border.all(
                        width: 1, color: Theme.of(context).accentColor),
                    color: Theme.of(context).primaryColorDark),
                child: Semantics(
                  label: "Seta para cima",
                  child: MergeSemantics(
                    child: TextButton(
                      style: ButtonStyle(alignment: Alignment.topCenter),
                      child: Icon(
                        Icons.arrow_upward,
                        size: 70,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: decrease,
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
