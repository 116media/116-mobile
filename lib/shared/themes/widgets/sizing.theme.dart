import '../extensions/sizing.extension.dart' show Sizing;

/// Default sizing values for the application theme.
///
/// Provides pre-configured [Sizing] instance with standard spacing values
/// based on a 4px grid system. Access via [SizingTheme.values].
class SizingTheme {
  SizingTheme._();

  /// The default sizing configuration for the app.
  static Sizing values = Sizing(
    s0_5: 0.5,
    s1: 1.0,
    s1_5: 1.5,
    s2: 2.0,
    s2_5: 2.5,
    s3: 3.0,
    s3_5: 3.5,
    s4: 4.0,
    s5: 5.0,
    s6: 6.0,
    s7: 7.0,
    s8: 8.0,
    s9: 9.0,
    s10: 10.0,
    s11: 11.0,
    s12: 12.0,
    s14: 14.0,
    s16: 16.0,
    s20: 20.0,
    s24: 24.0,
    s28: 28.0,
    s32: 32.0,
    s36: 36.0,
    s40: 40.0,
    s44: 44.0,
    s48: 48.0,
    s52: 52.0,
    s56: 56.0,
    s60: 60.0,
    s64: 64.0,
    s72: 72.0,
    s80: 80.0,
    s96: 96.0,
    s98: 98.0,
  );
}
