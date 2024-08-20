/**import 'package:flutter/material.dart';
import 'package:spider_man_delivery_app/generated/l10n.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: SwipeCarousel(),
      localizationsDelegates: const [AppLocalizationDelegate()],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en'),
      title: AppLocalizations.of(context)!.hello,
    );
  }
}
**/
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale('fr', '');

  void _changeLanguage(String languageCode) {
    setState(() {
      _locale = Locale(languageCode, '');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: _locale,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('fr', ''),
      ],
      home: MyHomePage(
        changeLanguage: _changeLanguage,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final void Function(String) changeLanguage;

  MyHomePage({required this.changeLanguage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.welcome),
        actions: [
          TextButton(
            onPressed: () => changeLanguage('en'),
            child: Text('English'),
          ),
          TextButton(
            onPressed: () => changeLanguage('fr'),
            child: Text('Français'),
          ),
        ],
      ),
      body: Center(
        child: Text(AppLocalizations.of(context)!.hello),
      ),
    );
  }
}