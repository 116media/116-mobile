import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

/// Theme extension providing consistent sizing values throughout the app.
///
/// Follows a spacing scale system for consistent layout and spacing.
class Sizing extends ThemeExtension<Sizing> {
  final double s0_5;
  final double s1;
  final double s1_5;
  final double s2;
  final double s2_5;
  final double s3;
  final double s3_5;
  final double s4;
  final double s5;
  final double s6;
  final double s7;
  final double s8;
  final double s9;
  final double s10;
  final double s11;
  final double s12;
  final double s14;
  final double s16;
  final double s18;
  final double s20;
  final double s24;
  final double s28;
  final double s30;
  final double s32;
  final double s36;
  final double s40;
  final double s44;
  final double s48;
  final double s52;
  final double s56;
  final double s60;
  final double s64;
  final double s72;
  final double s80;
  final double s96;
  final double s98;

  const Sizing({
    required this.s0_5,
    required this.s1,
    required this.s1_5,
    required this.s2,
    required this.s2_5,
    required this.s3,
    required this.s3_5,
    required this.s4,
    required this.s5,
    required this.s6,
    required this.s7,
    required this.s8,
    required this.s9,
    required this.s10,
    required this.s11,
    required this.s12,
    required this.s14,
    required this.s16,
    required this.s18,
    required this.s20,
    required this.s24,
    required this.s28,
    required this.s30,
    required this.s32,
    required this.s36,
    required this.s40,
    required this.s44,
    required this.s48,
    required this.s52,
    required this.s56,
    required this.s60,
    required this.s64,
    required this.s72,
    required this.s80,
    required this.s96,
    required this.s98,
  });

  @override
  Sizing copyWith({
    double? s0_5,
    double? s1,
    double? s1_5,
    double? s2,
    double? s2_5,
    double? s3,
    double? s3_5,
    double? s4,
    double? s5,
    double? s6,
    double? s7,
    double? s8,
    double? s9,
    double? s10,
    double? s11,
    double? s12,
    double? s14,
    double? s16,
    double? s18,
    double? s20,
    double? s24,
    double? s28,
    double? s30,
    double? s32,
    double? s36,
    double? s40,
    double? s44,
    double? s48,
    double? s52,
    double? s56,
    double? s60,
    double? s64,
    double? s72,
    double? s80,
    double? s96,
    double? s98,
  }) {
    return Sizing(
      s0_5: s0_5 ?? this.s0_5,
      s1: s1 ?? this.s1,
      s1_5: s1_5 ?? this.s1_5,
      s2: s2 ?? this.s2,
      s2_5: s2_5 ?? this.s2_5,
      s3: s3 ?? this.s3,
      s3_5: s3_5 ?? this.s3_5,
      s4: s4 ?? this.s4,
      s5: s5 ?? this.s5,
      s6: s6 ?? this.s6,
      s7: s7 ?? this.s7,
      s8: s8 ?? this.s8,
      s9: s9 ?? this.s9,
      s10: s10 ?? this.s10,
      s11: s11 ?? this.s11,
      s12: s12 ?? this.s12,
      s14: s14 ?? this.s14,
      s16: s16 ?? this.s16,
      s18: s18 ?? this.s18,
      s20: s20 ?? this.s20,
      s24: s24 ?? this.s24,
      s28: s28 ?? this.s28,
      s30: s30 ?? this.s30,
      s32: s32 ?? this.s32,
      s36: s36 ?? this.s36,
      s40: s40 ?? this.s40,
      s44: s44 ?? this.s44,
      s48: s48 ?? this.s48,
      s52: s52 ?? this.s52,
      s56: s56 ?? this.s56,
      s60: s60 ?? this.s60,
      s64: s64 ?? this.s64,
      s72: s72 ?? this.s72,
      s80: s80 ?? this.s80,
      s96: s96 ?? this.s96,
      s98: s98 ?? this.s98,
    );
  }

  @override
  ThemeExtension<Sizing> lerp(covariant ThemeExtension<Sizing>? other, double t) {
    if (other is! Sizing) {
      return this;
    }
    return Sizing(
      s0_5: lerpDouble(s0_5, other.s0_5, t)!,
      s1: lerpDouble(s1, other.s1, t)!,
      s1_5: lerpDouble(s1_5, other.s1_5, t)!,
      s2: lerpDouble(s2, other.s2, t)!,
      s2_5: lerpDouble(s2_5, other.s2_5, t)!,
      s3: lerpDouble(s3, other.s3, t)!,
      s3_5: lerpDouble(s3_5, other.s3_5, t)!,
      s4: lerpDouble(s4, other.s4, t)!,
      s5: lerpDouble(s5, other.s5, t)!,
      s6: lerpDouble(s6, other.s6, t)!,
      s7: lerpDouble(s7, other.s7, t)!,
      s8: lerpDouble(s8, other.s8, t)!,
      s9: lerpDouble(s9, other.s9, t)!,
      s10: lerpDouble(s10, other.s10, t)!,
      s11: lerpDouble(s11, other.s11, t)!,
      s12: lerpDouble(s12, other.s12, t)!,
      s14: lerpDouble(s14, other.s14, t)!,
      s16: lerpDouble(s16, other.s16, t)!,
      s18: lerpDouble(s18, other.s18, t)!,
      s20: lerpDouble(s20, other.s20, t)!,
      s24: lerpDouble(s24, other.s24, t)!,
      s28: lerpDouble(s28, other.s28, t)!,
      s30: lerpDouble(s30, other.s30, t)!,
      s32: lerpDouble(s32, other.s32, t)!,
      s36: lerpDouble(s36, other.s36, t)!,
      s40: lerpDouble(s40, other.s40, t)!,
      s44: lerpDouble(s44, other.s44, t)!,
      s48: lerpDouble(s48, other.s48, t)!,
      s52: lerpDouble(s52, other.s52, t)!,
      s56: lerpDouble(s56, other.s56, t)!,
      s60: lerpDouble(s60, other.s60, t)!,
      s64: lerpDouble(s64, other.s64, t)!,
      s72: lerpDouble(s72, other.s72, t)!,
      s80: lerpDouble(s80, other.s80, t)!,
      s96: lerpDouble(s96, other.s96, t)!,
      s98: lerpDouble(s98, other.s98, t)!,
    );
  }
}
