// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emi_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EmiAdapter extends TypeAdapter<Emi> {
  @override
  final int typeId = 3;

  @override
  Emi read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Emi(
      id: fields[0] as String,
      lenderName: fields[1] as String,
      monthlyAmount: fields[2] as double,
      startDate: fields[3] as DateTime,
      endDate: fields[4] as DateTime,
      interestRate: fields[5] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Emi obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.lenderName)
      ..writeByte(2)
      ..write(obj.monthlyAmount)
      ..writeByte(3)
      ..write(obj.startDate)
      ..writeByte(4)
      ..write(obj.endDate)
      ..writeByte(5)
      ..write(obj.interestRate);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
