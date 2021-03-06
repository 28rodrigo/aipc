import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/notifier.dart';
import 'package:aipc/pages/home.dart';

class ColorSchemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          iconTheme: IconThemeData(color: Theme.of(context).accentColor),
          backgroundColor: Theme.of(context).primaryColorDark,
          title: Text(
            "Cores",
            style: TextStyle(
                fontSize: 40 * _data.count,
                color: Theme.of(context).accentColor),
          ),
        ),
        body: SwipeDetector(
          onSwipeRight: () {
            if (_data.gesture == 1) Navigator.pop(context);
          },
          child: Center(
            child: MergeSemantics(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Semantics(
                    label: "Cores Azul e Preto",
                    child: MergeSemantics(
                      child: TextButton(
                        onPressed: () {
                          _data.changeTheme(0);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: new BoxDecoration(
                            border: Border.all(
                                width: 1, color: Theme.of(context).accentColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: deviceWidth * 0.3,
                                height: deviceHeight * 0.1,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    border: Border.all(
                                        color: Theme.of(context).accentColor)),
                              ),
                              SizedBox(
                                width: deviceWidth * 0.1,
                                height: deviceHeight * 0.1,
                              ),
                              Container(
                                width: deviceWidth * 0.3,
                                height: deviceHeight * 0.1,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                        color: Theme.of(context).accentColor)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Semantics(
                    label: "Cores Amarelo e Preto",
                    child: MergeSemantics(
                      child: TextButton(
                        onPressed: () {
                          _data.changeTheme(1);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 10, right: 10),
                          padding: EdgeInsets.all(10),
                          decoration: new BoxDecoration(
                            border: Border.all(
                                width: 1, color: Theme.of(context).accentColor),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: deviceWidth * 0.3,
                                height: deviceHeight * 0.1,
                                decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    border: Border.all(
                                        color: Theme.of(context).accentColor)),
                              ),
                              SizedBox(
                                width: deviceWidth * 0.1,
                                height: deviceHeight * 0.1,
                              ),
                              Container(
                                width: deviceWidth * 0.3,
                                height: deviceHeight * 0.1,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    border: Border.all(
                                        color: Theme.of(context).accentColor)),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(child: BackNavigation(goBack: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomePage(),
              ),
              (route) => false);
        })));
  }
}
