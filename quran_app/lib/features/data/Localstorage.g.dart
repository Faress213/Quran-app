// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Localstorage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuranAdapter extends TypeAdapter<Quran> {
  @override
  final int typeId = 0;

  @override
  Quran read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Quran()
      ..pagenumber = fields[0] as int
      ..arabicText = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, Quran obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.pagenumber)
      ..writeByte(1)
      ..write(obj.arabicText);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuranAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
