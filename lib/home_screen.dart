import 'package:flutter/material.dart';
import 'package:islami_app/tabs/hadeh_tap.dart';
import 'package:islami_app/tabs/quran_tap.dart';
import 'package:islami_app/tabs/radio_tap.dart';
import 'package:islami_app/tabs/sebha_tap.dart';
import 'package:islami_app/tabs/settings/setting.dart';
import 'package:islami_app/tabs/settings/setting_tab.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<Widget> taps = [
    radio(),
    sebha(),
    hadeh(),
    quran(),
    setting(),
  ];
  int selectedtap = 0;
  @override
  Widget build(BuildContext context) {
    settingsProvider settingsprovider = Provider.of<settingsProvider>(context);
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/${settingsprovider.backgroundImgPath}'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(AppLocalizations.of(context)!.islami),
          ),
          body: taps[selectedtap],
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: 0,
            onTap: (inedx) {
              selectedtap = inedx;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_radio.png'),
                    size: 30.0,
                  ),
                  label: 'radio'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_sebha.png'),
                    size: 30.0,
                  ),
                  label: 'sebha'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_hadeth.png'),
                    size: 30.0,
                  ),
                  label: 'hadeth'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/icon_quran.png'),
                    size: 30.0,
                  ),
                  label: 'quran'),
              BottomNavigationBarItem (
                  icon: ImageIcon(
                    AssetImage('assets/images/setting.png'),
                    size: 30.0,
                  ),
                  label: 'Settings'),
            ],
          ),
        ),
      ),
    );
  }
}
