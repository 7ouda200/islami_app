import 'package:flutter/material.dart';
class radio extends StatefulWidget {
  const radio({super.key});

  @override
  State<radio> createState() => _radioState();
}

class _radioState extends State<radio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         Image.asset('assets/images/radio_image.png'),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Text(
               'اذاعة القران الكريم',
               style: Theme.of(context).textTheme.headlineSmall,
             ),
           ],
         ),
         SizedBox(height: 20,),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: <Widget>[
             Image.asset('assets/images/back.png'),
             Image.asset('assets/images/play.png'),
             Image.asset('assets/images/next.png'),


           ],
         )


       ],
     ),
    );
  }
}
