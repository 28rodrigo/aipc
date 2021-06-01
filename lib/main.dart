import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/functions/themes.dart';
import 'package:aipc/pages/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider(create: (_) => DataProvider(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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

      //EditarContactoPage()
      //ChamadasNaoAtendidasPage()
      //RegistoChamadasPage()
      //AccessSettings(),
      //SettingsPage(),
      //ContactoDetailsPage(),
      //ContactsPage(),
      //CriarContacto(),
      //HomePage(),
      //TecladoPage(),
      //TecladoNumericoPage()
      //TecladoPesquisaPage()
    );
  }
}
