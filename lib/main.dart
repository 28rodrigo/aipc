import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:aipc/functions/notifier.dart';
import 'package:aipc/pages/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(create: (_) => DataProvider(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DataProvider _data = Provider.of<DataProvider>(context);

    return MaterialApp(
      title: 'AIPC',
      theme: _data.theme == 1
          ? ThemeData(
              primaryColorDark: Colors.yellow[600], accentColor: Colors.black)
          : ThemeData(primaryColor: Colors.blue, accentColor: Colors.black),
      home: HomePage(),
    );
  }
}
