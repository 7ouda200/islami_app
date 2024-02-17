import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_theme.dart';

class sura_screen extends StatefulWidget {
  static const String routeName = 'sura_details';

  @override
  State<sura_screen> createState() => _sura_screenState();
}

class _sura_screenState extends State<sura_screen> {
  List<String> ayat = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    sura_args args = ModalRoute.of(context)!.settings.arguments as sura_args;
    if (ayat.isEmpty) {
      loadSuraFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/default_bg.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.sura_name,
          ),
        ),
        body: Center(
          child: ayat.isEmpty
              ? CircularProgressIndicator()
              : Container(
                decoration: BoxDecoration(
                    color: AppTheme.white,
                    borderRadius: BorderRadius.circular(20.0)
                ),
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height*0.05,
                  horizontal: MediaQuery.of(context).size.width*0.05,
                ),
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Text(
                        '${ayat[index]}(${index+1})',
                        textDirection: TextDirection.rtl,
                        style: Theme.of(context).textTheme.titleLarge,
                      );
                    },
                    itemCount: ayat.length,
                  ),
              ),
        ),
      ),
    );
  }

  Future<void> loadSuraFile(int index) async {
    String sura = await rootBundle.loadString('assets/files/${index + 1}.txt');
    ayat = sura.split('\n');
    setState(() {});
  }
}

class sura_args {
  int index;
  String sura_name;
  sura_args(this.index, this.sura_name);
}
