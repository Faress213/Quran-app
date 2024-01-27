import 'package:hive/hive.dart';
part 'Localstorage.g.dart';

String ?nownow;

@HiveType(typeId: 0)
class Quran extends HiveObject {
  @HiveField(0)
  late int pagenumber;
  @HiveField(1)
  late String arabicText;
}
