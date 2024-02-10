import 'package:flutter/material.dart';

class sebha extends StatefulWidget {
  const sebha({super.key});

  @override
  State<sebha> createState() => _sebhaState();
}

class _sebhaState extends State<sebha> {
  int count = 0;
  int counter = 2;
  List<String> azkar = [
    'سبحان الله',
    'الله اكبر',
    'الحمد لله',
    'لا اله الا الله',
    'استغفر الله'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          InkWell(
              onTap: () {
                changeazkar();
              },
              child: Image.asset('assets/images/sebha.png')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'عدد التسبيحات',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 70,
            width: 55,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            child: Center(
                child: Text(
              '$count',
              style: Theme.of(context).textTheme.headlineSmall,
            )),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20.0))),
            child: Center(
                child: Text(
              '${azkar[counter]}',
              style: Theme.of(context).textTheme.headlineSmall,
            )),
          ),
        ],
      ),
    );
  }

  void changeazkar() {
    if (count >= 33) {
      count = 0;

      if (counter >= 4) {
        counter = 0;
      } else {
        counter++;
      }
    } else {
      count++;
    }
    setState(() {});
  }
}
