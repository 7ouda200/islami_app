import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/hadeth_details.dart';
import 'package:islami_app/tabs/settings/setting.dart';
import 'package:islami_app/tabs/sura_details.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
    child: const MyApp(),
    create: (context) => settingsProvider(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  SharedPreferences? opendata;
  var langcode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getshared();
  }
  void getshared() async {
    opendata = await SharedPreferences.getInstance();
    langcode = opendata!.getString('lang');
    setState(() {});
    print(langcode);

  }

  @override
  Widget build(BuildContext context) {
    settingsProvider settingsprovider = Provider.of<settingsProvider>(context);
    return MaterialApp(
      routes: {
        sura_screen.routeName: (context) => sura_screen(),
        hadeth_screen.routeName: (context) => hadeth_screen(),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Provider.of<settingsProvider>(context).themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales:AppLocalizations.supportedLocales,
      locale: Locale(langcode==null?settingsprovider.language:langcode),
      title: 'Flutter Demo',
      home: home(),
    );
  }
}
