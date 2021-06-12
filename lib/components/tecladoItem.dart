import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:aipc/functions/notifier.dart';
import 'package:aipc/pages/contactos.dart';

class TecladoItem extends StatefulWidget {
  final String text;
  final double width;
  final bool search;
  final TextEditingController controller;

  TecladoItem({this.text, this.width, this.controller, this.search});

  @override
  _TecladoItemState createState() => _TecladoItemState();
}

class _TecladoItemState extends State<TecladoItem> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    DataProvider _data = Provider.of<DataProvider>(context);
    return Semantics(
      label: "Tecla " + widget.text,
      child: MergeSemantics(
        child: TextButton(
          onPressed: widget.search
              ? () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ContactsPage(
                                specificLeter: widget.text,
                              )));
                }
              : () {
                  if (widget.controller.text.length < 20)
                    widget.controller.text += widget.text;
                },
          child: Container(
            alignment: Alignment.topCenter,
            height: deviceHeight * 0.14,
            width: widget.width,
            decoration: BoxDecoration(
                border:
                    Border.all(color: Theme.of(context).accentColor, width: 2),
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: deviceWidth * 0.28 * _data.count,
                  color: Theme.of(context).accentColor),
            ),
          ),
        ),
      ),
    );
  }
}
