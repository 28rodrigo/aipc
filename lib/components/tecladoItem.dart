import 'package:flutter/material.dart';

class TecladoItem extends StatefulWidget {
  String text = "";
  TecladoItem({this.text});

  @override
  _TecladoItemState createState() => _TecladoItemState();
}

class _TecladoItemState extends State<TecladoItem> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return TextButton(
      onPressed: () {},
      child: Container(
        alignment: Alignment.center,
        height: deviceHeight * 0.16,
        width: deviceWidth * 0.29,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          widget.text,
          style: TextStyle(fontSize: deviceWidth * 0.30, color: Colors.black),
        ),
      ),
    );
  }
}