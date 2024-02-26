
import 'dart:ui';

import 'package:hive/hive.dart';

class ColorAdapter extends TypeAdapter<Color> {
  @override
  final int typeId = 1;

  @override
  Color read(BinaryReader reader) {
    final colorValue = reader.readInt(); // Read the color value as an integer
    return Color(colorValue); // Convert the integer to a Color object
  }

  @override
  void write(BinaryWriter writer, Color obj) {
    final colorValue = obj.value; // Get the color value as an integer
    writer.writeInt(colorValue); // Write the color value to Hive
  }
}