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
                image: NetworkImage(contactDetail.values.elementAt(3)),
                fit: BoxFit.cover,
              ),
            ),
            width: deviceWidth * 0.45,
            height: deviceHeight * 0.24,
          ),
        ),
        Container(
            width: deviceWidth * 0.45,
            decoration: new BoxDecoration(
              color: Colors.blue,
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Flexible(
              child: Text(
                contactDetail.values.elementAt(1),
                overflow: TextOverflow.clip,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: deviceWidth * 0.08),
              ),
            ))
      ],
    );
  }
}
