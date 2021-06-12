import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:fluttertoast/fluttertoast.dart';

//Função de chamadas

Future<void> callnow(String url) async {
  if (await canLaunch(url)) {
    Fluttertoast.showToast(
      msg: "A chamar!",
      backgroundColor: Colors.grey,
    );

    await launch(url);
  } else {
    Fluttertoast.showToast(
      msg: "Não foi possivel realizar a chamada!",
      backgroundColor: Colors.grey,
    );
  }
}
