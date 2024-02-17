import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_theme.dart';

class hadeth_screen extends StatefulWidget {
  static const String routeName = 'hadeth_details';

  @override
  State<hadeth_screen> createState() => _hadeth_screenState();
}

class _hadeth_screenState extends State<hadeth_screen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    hadeth_args args =
        ModalRoute.of(context)!.settings.arguments as hadeth_args;

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
            args.title,
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              color: AppTheme.white, borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.05,
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Text(
                '${args.content[index]}',
                textDirection: TextDirection.rtl,
                style: Theme.of(context).textTheme.titleLarge,
              );
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    );
  }
}

class hadeth_args {
  String title;
  List<String> content;
  hadeth_args(this.title, this.content);
}
