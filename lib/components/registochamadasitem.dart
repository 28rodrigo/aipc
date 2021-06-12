import 'package:flutter/material.dart';

class RegistoChamadaItem extends StatelessWidget {
  final Map<String, String> contactDetails;
  final void Function() goOk;

  RegistoChamadaItem({@required this.contactDetails, this.goOk});

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return TextButton(
      onPressed: goOk,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: new BoxDecoration(
              color: Theme.of(context).primaryColorDark,
              border:
                  Border.all(width: 3, color: Theme.of(context).accentColor),
              borderRadius: BorderRadius.circular(15),
              image: new DecorationImage(
                image: NetworkImage(contactDetails.values.elementAt(3)),
                fit: BoxFit.cover,
              ),
            ),
            width: deviceWidth * 0.2,
            height: deviceHeight * 0.1,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: deviceWidth * 0.55,
                height: deviceHeight * 0.04,
                child: FittedBox(
                  child: Text(
                    contactDetails.values.elementAt(1),
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).accentColor),
                  ),
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: deviceWidth * 0.45,
                height: deviceHeight * 0.04,
                child: FittedBox(
                  child: Text(
                    contactDetails.values.elementAt(5),
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Container(
            width: deviceWidth * 0.2,
            child: contactDetails.values.elementAt(4) == 'nAtendida'
                ? Icon(
                    Icons.call_end_rounded,
                    color: Colors.red,
                    size: deviceWidth * 0.1,
                  )
                : contactDetails.values.elementAt(4) == 'atendida'
                    ? Icon(
                        Icons.call,
                        color: Colors.yellow,
                        size: deviceWidth * 0.1,
                      )
                    : Icon(
                        Icons.call,
                        color: Colors.green,
                        size: deviceWidth * 0.1,
                      ),
          )
        ],
      ),
    );
  }
}
