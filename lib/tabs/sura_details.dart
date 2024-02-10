import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class sura_screen extends StatelessWidget {
  static const String routeName = 'sura_details';
  List<String> ayat = [];
  @override
  Widget build(BuildContext context) {
    sura_args args = ModalRoute.of(context)!.settings.arguments as sura_args;
    loadSuraFile(args.index);
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.sura_name),
        ),
      ),
    );
  }

  Future<void> loadSuraFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    ayat = sura.split('\n');
  }
}

class sura_args {
  int index;
  String sura_name;
  sura_args(this.index, this.sura_name);
}
