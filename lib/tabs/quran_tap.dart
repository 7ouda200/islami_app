import 'package:flutter/material.dart';

class quran extends StatefulWidget {
  const quran({super.key});

  @override
  State<quran> createState() => _quranState();
}

class _quranState extends State<quran> {
  List<String> name = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/qur2an_screen_logo.png'),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      right: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                      top: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                      bottom: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'عدد الايات',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                      top: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                      bottom: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'اسم الصورة',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border(
                        right: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                        top: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                        bottom: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'عدد الايات',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      border: Border(
                        left: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                        top: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                        bottom: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2),
                      ),
                    ),
                    child: Center(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Text(
                              name[index],
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.headlineSmall,
                            ),
                          );
                        },
                        itemCount: name.length,
                        separatorBuilder: (context, index) => SizedBox(
                          height: 2,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
