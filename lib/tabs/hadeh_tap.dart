import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/tabs/hadeth_details.dart';

import '../hadeth_class.dart';

class hadeh extends StatefulWidget {
  const hadeh({super.key});

  @override
  State<hadeh> createState() => _hadehState();
}

class _hadehState extends State<hadeh> {
  List<Hadeth> ahadeth = [];
  @override
  Widget build(BuildContext context) {
    if (ahadeth.isEmpty) {
      loadSuraFile();
    }
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/hadeth_logo.png'),
          ahadeth.isEmpty
              ? CircularProgressIndicator()
              : Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              hadeth_screen.routeName,
                              arguments: hadeth_args(ahadeth[index].title,
                                  ahadeth[index].content));
                        },
                        child: Text(
                          '${ahadeth[index].title}',
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
                      );
                    },
                    itemCount: 50,
                  ),
                ),
        ],
      ),
    );
  }

  Future<void> loadSuraFile() async {
    String Getahadeth = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> stringsOfahdeth = Getahadeth.split('#');
    ahadeth = stringsOfahdeth.map((hadethStrings) {
      List<String> hadeth_lines = hadethStrings.trim().split('\n');
      String title = hadeth_lines[0];
      hadeth_lines.removeAt(0);
      List<String> content = hadeth_lines;
      return Hadeth(title, content);
    }).toList();
    setState(() {});
  }
}
