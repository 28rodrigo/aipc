import 'package:flutter/material.dart';

class ContactsItem extends StatelessWidget {
  final void Function() onClick;
  final Map<String, String> contactDetail;

  ContactsItem({@required this.onClick, this.contactDetail});
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        TextButton(
          onPressed: onClick,
          child: Container(
            decoration: new BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 3, color: Colors.black),
              borderRadius: BorderRadius.circular(15),
              image: new DecorationImage(
                image: ExactAssetImage('assets/quim.png'),
                fit: BoxFit.cover,
              ),
            ),
            width: deviceWidth * 0.45,
            height: deviceHeight * 0.24,
          ),
        ),
        Container(
            width: deviceWidth * 0.45,
            height: deviceHeight * 0.1,
            decoration: new BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: FittedBox(
              fit: BoxFit.contain,
              child: Text(
                "Quim",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ))
      ],
    );
  }
}
