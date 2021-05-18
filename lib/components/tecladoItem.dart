import 'package:flutter/material.dart';

class TecladoItem extends StatefulWidget {
  String text = "";
  double width = 0;
  TextEditingController controller;
  TecladoItem({this.text, this.width, this.controller});

  @override
  _TecladoItemState createState() => _TecladoItemState();
}

class _TecladoItemState extends State<TecladoItem> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return TextButton(
      onPressed: () {
        if (widget.controller.text.length < 12)
          widget.controller.text += widget.text;
      },
      child: Container(
        alignment: Alignment.topCenter,
        height: deviceHeight * 0.14,
        width: widget.width,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          widget.text,
          style: TextStyle(fontSize: deviceWidth * 0.28, color: Colors.black),
        ),
      ),
    );
  }
}
