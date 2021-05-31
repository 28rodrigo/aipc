import 'package:aipc/components/backNavigation.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/pages/home.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipedetector/swipedetector.dart';

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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    EasyDynamicTheme.of(context).changeTheme();
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
                TextButton(
                  onPressed: () {},
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
              ],
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
