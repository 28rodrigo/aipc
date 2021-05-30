import 'package:aipc/functions/sizeprovider.dart';
import 'package:aipc/functions/themes.dart';
import 'package:aipc/pages/home.dart';
import 'package:easy_dynamic_theme/easy_dynamic_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
    ChangeNotifierProvider(
        create: (_) => DataProvider(),
        child: EasyDynamicThemeWidget(child: MyApp())),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AIPC',
      theme: lightThemeData,
      darkTheme: darkThemeData,
      themeMode: EasyDynamicTheme.of(context).themeMode,
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
