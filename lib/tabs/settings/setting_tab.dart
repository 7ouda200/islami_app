import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/settings/setting.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class setting extends StatefulWidget {
  const setting({super.key});

  @override
  State<setting> createState() => _settingState();
}

class _settingState extends State<setting> {
  List<Languages> languages = [
    Languages(name: 'English', code: 'en'),
    Languages(name: 'العربية', code: 'ar')
  ];
  SharedPreferences? setdata;
  @override
  Widget build(BuildContext context) {
    settingsProvider settingsprovider = Provider.of<settingsProvider>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Dark Mode',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Switch(
                  activeColor: Theme.of(context).primaryColor,
                  inactiveThumbColor: Theme.of(context).primaryColor,
                  //thumbColor: MaterialStatePropertyAll(AppTheme.white),
                  value: settingsprovider.themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    if (value) {
                      settingsprovider.changeTheme(ThemeMode.dark);
                    } else {
                      settingsprovider.changeTheme(ThemeMode.light);
                    }
                  },
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Language',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                DropdownButton(
                  value: languages
                      .firstWhere((l) => l.code == settingsprovider.language),
                  items: languages
                      .map((lang) =>
                          DropdownMenuItem(value: lang, child: Text(lang.name)))
                      .toList(),
                  onChanged: (selectedvalue) {
                    if (selectedvalue != null) {
                      settingsprovider.changeLanguage(selectedvalue.code);
                      setState(() {
                        setdata?.setString('lang', settingsprovider.language);
                        print(settingsprovider.language);
                      });
                    }
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Languages {
  String name;
  String code;
  Languages({
    required this.name,
    required this.code,
  });
}
