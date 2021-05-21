import 'package:aipc/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      home:

          //EditarContactoPage()
          //ChamadasNaoAtendidasPage()
          //RegistoChamadasPage()
          //AccessSettings(),
          //SettingsPage(),
          //ContactoDetailsPage(),
          //ContactsPage(),
          //CriarContacto(),
          HomePage(),
      //TecladoPage(),
      //TecladoNumericoPage()
      //TecladoPesquisaPage()
    );
  }
}
