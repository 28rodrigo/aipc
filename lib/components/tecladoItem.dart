import 'package:aipc/functions/contacto_data.dart';
import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/pages/contactos.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TecladoItem extends StatefulWidget {
  String text = "";
  double width = 0;
  bool search;
  TextEditingController controller;
  TecladoItem({this.text, this.width, this.controller, this.search});

  @override
  _TecladoItemState createState() => _TecladoItemState();
}

class _TecladoItemState extends State<TecladoItem> {
  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;
    return TextButton(
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
            border: Border.all(color: Theme.of(context).accentColor, width: 2),
            borderRadius: BorderRadius.circular(10)),
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: deviceWidth * 0.28 * _data.count,
              color: Theme.of(context).accentColor),
        ),
      ),
    );
  }
}
