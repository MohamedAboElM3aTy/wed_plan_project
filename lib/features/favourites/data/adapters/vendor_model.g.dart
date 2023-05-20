// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class VendorAdapter extends TypeAdapter<VendorModel> {
  @override
  final int typeId = 0;

  @override
  VendorModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VendorModel(
      id: fields[0] as String,
      name: fields[1] as String,
      category: fields[2] as String,
      imageUrl: fields[3] as String,
      businessUrl: fields[4] as String,
      phoneNumber: fields[5] as String,
      rating: fields[6] as double,
      price: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, VendorModel obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.imageUrl)
      ..writeByte(4)
      ..write(obj.businessUrl)
      ..writeByte(5)
      ..write(obj.phoneNumber)
      ..writeByte(6)
      ..write(obj.rating)
      ..writeByte(7)
      ..write(obj.price);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VendorAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
