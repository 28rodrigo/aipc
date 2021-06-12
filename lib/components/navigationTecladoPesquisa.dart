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
              MergeSemantics(
                child: Container(
                  width: deviceWidth * 0.5,
                  height: deviceHeight * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Theme.of(context).accentColor),
                    color: Theme.of(context).primaryColorDark,
                  ),
                  child: Semantics(
                    label: "Telefonar",
                    child: MergeSemantics(
                      child: TextButton(
                        child: Icon(
                          Icons.call,
                          size: 70,
                          color: Colors.green,
                        ),
                        onPressed: goOK,
                      ),
                    ),
                  ),
                ),
              ),
              MergeSemantics(
                child: Container(
                    width: deviceWidth * 0.5,
                    height: deviceHeight * 0.1,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Theme.of(context).accentColor),
                        color: Theme.of(context).primaryColorDark),
                    child: Semantics(
                      label: "Cancelar",
                      child: MergeSemantics(
                        child: TextButton(
                          style: ButtonStyle(alignment: Alignment.topCenter),
                          child: Icon(
                            Icons.cancel,
                            size: 70,
                            color: Colors.red[800],
                          ),
                          onPressed: goBack,
                        ),
                      ),
                    )),
              ),
            ]
          : [
              MergeSemantics(
                child: Container(
                  width: deviceWidth * 0.5,
                  height: deviceHeight * 0.1,
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: Theme.of(context).accentColor),
                    color: Theme.of(context).primaryColorDark,
                  ),
                  child: Semantics(
                    label: "Confirmar",
                    child: MergeSemantics(
                      child: TextButton(
                        child: Icon(
                          Icons.check_circle_outline_outlined,
                          size: 70,
                          color: Colors.green,
                        ),
                        onPressed: goOK,
                      ),
                    ),
                  ),
                ),
              ),
              MergeSemantics(
                child: Container(
                    width: deviceWidth * 0.5,
                    height: deviceHeight * 0.1,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: Theme.of(context).accentColor),
                        color: Theme.of(context).primaryColorDark),
                    child: Semantics(
                      label: "Cancelar",
                      child: MergeSemantics(
                        child: TextButton(
                          style: ButtonStyle(alignment: Alignment.topCenter),
                          child: Icon(
                            Icons.cancel,
                            size: 70,
                            color: Colors.red[800],
                          ),
                          onPressed: goBack,
                        ),
                      ),
                    )),
              ),
            ],
    );
  }
}
