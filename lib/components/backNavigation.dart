import 'package:flutter/material.dart';

class BackNavigation extends StatelessWidget {
  final void Function() goBack;

  BackNavigation({@required this.goBack});
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Theme.of(context).accentColor),
          color: Theme.of(context).primaryColorDark),
      child: MergeSemantics(
        child: Container(
            height: deviceHeight * 0.1,
            decoration:
                BoxDecoration(color: Theme.of(context).primaryColorDark),
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
            )),
      ),
    );
  }
}
