import 'package:flutter/material.dart';
import 'package:quran_app/core/routes.dart';
import 'package:quran_app/features/data/Localstorage.dart';
import 'package:hive_flutter/adapters.dart';


List Pictures = [];

List<String> surahs = [
  'الفاتحة Al Fatiha',
  'البقرة Al Baqarah',
  'آل عمران Aal E Imran',
  'النساء An Nisa\'',
  'المائدة Al Ma\'idah',
  'الأنعام Al An\'am',
  'الأعراف Al A\'raf',
  'الأنفال Al Anfal',
  'التوبة At Tawbah',
  'يونس Yunus',
  'هود Hud',
  'يوسف Yusuf',
  'الرعد Ar Ra\'d',
  'إبراهيم Ibrahim',
  'الحجر Al Hijr',
  'النحل An Nahl',
  'الإسراء Al Isra\'',
  'الكهف Al Kahf',
  'مريم Maryam',
  'طه Ta Ha',
  'الأنبياء Al Anbiya\'',
  'الحج Al Hajj',
  'المؤمنون Al Mu\'minun',
  'النور An Nur',
  'الفرقان Al Furqan',
  'الشعراء Ash Shu\'ara',
  'النمل An Naml',
  'القصص Al Qasas',
  'العنكبوت Al Ankabut',
  'الروم Ar Rum',
  'لقمان Luqman',
  'السجدة As Sajda',
  'الأحزاب Al Ahzab',
  'سبأ Saba\'',
  'فاطر Fatir',
  'يس Ya Sin',
  'الصافات As Saffat',
  'ص Sad',
  'الزمر Az Zumar',
  'غافر Ghafir',
  'فصلت Fussilat',
  'الشورى Ash Shura',
  'الزخرف Az Zukhruf',
  'الدخان Ad Dukhan',
  'الجاثية Al Jathiya',
  'الأحقاف Al Ahqaf',
  'محمد Muhammad',
  'الفتح Al Fath',
  'الحجرات Al Hujurat',
  'ق Qaf',
  'الذاريات Adh Dhariyat',
  'الطور At Tur',
  'النجم An Najm',
  'القمر Al Qamar',
  'الرحمن Ar Rahman',
  'الواقعة Al Waqi\'a',
  'الحديد Al Hadid',
  'المجادلة Al Mujadila',
  'الحشر Al Hashr',
  'الممتحنة Al Mumtahanah',
  'الصف As Saff',
  'الجمعة Al Jumu\'a',
  'المنافقون Al Munafiqun',
  'التغابن At Taghabun',
  'الطلاق At Talaq',
  'التحريم At Tahrim',
  'الملك Al Mulk',
  'القلم Al Qalam',
  'الحاقة Al Haaqqa',
  'المعارج Al Ma\'arij',
  'نوح Nuh',
  'الجن Al Jinn',
  'المزمل Al Muzzammil',
  'المدثر Al Muddaththir',
  'القيامة Al Qiyama',
  'الإنسان Al Insan',
  'المرسلات Al Mursalat',
  'النبأ An Naba\'',
  'النازعات An Nazi\'at',
  'عبس Abasa',
  'التكوير At Takwir',
  'الإنفطار Al Infitar',
  'المطففين Al Mutaffifin',
  'الإنشقاق Al Inshiqaq',
  'البروج Al Buruj',
  'الطارق At Tariq',
  'الأعلى Al Ala',
  'الغاشية Al Ghashiyah',
  'الفجر Al Fajr',
  'البلد Al Balad',
  'الشمس Ash Shams',
  'الليل Al Layl',
  'الضحى Adh Dhuha',
  'الشرح Ash Sharh',
  'التين At Tin',
  'العلق Al Alaq',
  'القدر Al Qadr',
  'البينة Al Bayyina',
  'الزلزلة Az Zalzalah',
  'العاديات Al Adiyat',
  'القارعة Al Qari\'a',
  'التكاثر At Takathur',
  'العصر Al Asr',
  'الهمزة Al Humazah',
  'الفيل Al Fil',
  'قريش Quraish',
  'الماعون Al Ma\'un',
  'الكوثر Al Kawthar',
  'الكافرون Al Kafirun',
  'النصر An Nasr',
  'المسد Al Masad',
  'الإخلاص Al Ikhlas',
  'الفلق Al Falaq',
  'الناس An Nas',
];
var box = Hive.box('The Quran');
var box2 = Hive.box('Surah names');
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(QuranAdapter());
  await Hive.openBox('The Quran');

  if (box.length == 0) {
    _initImages();
    getpictures();
  } else {
    getpictures();
  }
  runApp(
    MaterialApp.router(
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      routerConfig: Approutes.router,
    ),
  );
}

Future _initImages() async {
  for (int i = 1; i <= 604; i++) {
    var current = 'quran_images/$i.png';
    box.add(current);
  }
}

getpictures() {
  for (int i = 0; i < box.length; i++) {
    Pictures.add(box.getAt(i));
  }
}
