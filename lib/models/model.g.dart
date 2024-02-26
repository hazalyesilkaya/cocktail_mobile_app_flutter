// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductModelAdapter extends TypeAdapter<ProductModel> {
  @override
  final int typeId = 0;

  @override
  ProductModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProductModel(
      name: fields[0] as String?,
      img: fields[1] as String?,
      description: fields[2] as String?,
      firstStep: fields[3] as String?,
      secondStep: fields[4] as String?,
      ingredient: fields[5] as String?,
      id: fields[6] as int?,
      color: fields[9] as Color?,
    )
      ..index = fields[7] as int
      ..isShow = fields[8] as bool;
  }

  @override
  void write(BinaryWriter writer, ProductModel obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.img)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.firstStep)
      ..writeByte(4)
      ..write(obj.secondStep)
      ..writeByte(5)
      ..write(obj.ingredient)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.index)
      ..writeByte(8)
      ..write(obj.isShow)
      ..writeByte(9)
      ..write(obj.color);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
