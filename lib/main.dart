import 'package:aipc/pages/accessSettings.dart';
import 'package:aipc/pages/contactoDetail.dart';
import 'package:aipc/pages/criarContacto.dart';
import 'package:aipc/pages/settings.dart';
import 'package:aipc/pages/teclado.dart';
import 'package:aipc/pages/tecladoPesquisa.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AIPC',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SettingsPage(),
    );
  }
}
