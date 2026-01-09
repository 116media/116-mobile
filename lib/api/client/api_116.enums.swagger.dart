// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum EnumBrowser {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  value_0(0),
  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3),
  @JsonValue(4)
  value_4(4),
  @JsonValue(5)
  value_5(5),
  @JsonValue(6)
  value_6(6),
  @JsonValue(7)
  value_7(7),
  @JsonValue(8)
  value_8(8);

  final int? value;

  const EnumBrowser(this.value);
}

enum EnumClient {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  value_0(0),
  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3);

  final int? value;

  const EnumClient(this.value);
}

enum EnumDevice {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  value_0(0),
  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3),
  @JsonValue(4)
  value_4(4),
  @JsonValue(5)
  value_5(5),
  @JsonValue(6)
  value_6(6),
  @JsonValue(7)
  value_7(7),
  @JsonValue(8)
  value_8(8);

  final int? value;

  const EnumDevice(this.value);
}

enum EnumPlatform {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue(0)
  value_0(0),
  @JsonValue(1)
  value_1(1),
  @JsonValue(2)
  value_2(2),
  @JsonValue(3)
  value_3(3),
  @JsonValue(4)
  value_4(4),
  @JsonValue(5)
  value_5(5),
  @JsonValue(6)
  value_6(6),
  @JsonValue(7)
  value_7(7);

  final int? value;

  const EnumPlatform(this.value);
}
