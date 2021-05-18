import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

Future<void> callnow(String url) async {
  if (await canLaunch(url)) {
    Fluttertoast.showToast(
      msg: "A chamar!",
      backgroundColor: Colors.grey,
      // fontSize: 25
      // gravity: ToastGravity.TOP,
      // textColor: Colors.pink
    );
    await launch(url);
  } else {
    Fluttertoast.showToast(
      msg: "Não foi possivel realizar a chamada!",
      backgroundColor: Colors.grey,
      // fontSize: 25
      // gravity: ToastGravity.TOP,
      // textColor: Colors.pink
    );
  }
}
