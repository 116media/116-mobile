import 'package:flutter/widgets.dart';

import '../utils/borderdraw.util.dart' show BorderDrawUtil;
import '../utils/colors.util.dart' show ColorsUtil;

/// A custom painter that creates an animated border effect with rounded corners.
///
/// This painter draws two paths (top half and bottom half of a border) that animate
/// based on the [animationPercent] value. The border has rounded corners using
/// quadratic bezier curves and splits at the vertical midpoint.
///
/// Example usage:
/// ```dart
/// CustomPaint(
///   painter: BorderAnimation(0.5), // 50% animation progress
///   child: YourWidget(),
/// )
/// ```
class BorderAnimation extends CustomPainter {
  /// The animation progress from 0.0 to 1.0.
  ///
  /// - 0.0: Animation at start (border not drawn)
  /// - 1.0: Animation complete (full border drawn)
  final double animationPercent;

  /// Creates an [BorderAnimation] with the specified animation progress.
  ///
  /// The [animationPercent] should be between 0.0 and 1.0.
  BorderAnimation(this.animationPercent);

  /// Paints the animated border on the canvas.
  ///
  /// Creates two paths that split at the vertical midpoint:
  /// - pathOne: Draws from middle-left → top-left corner → top-right corner → middle-right
  /// - pathTwo: Draws from middle-left → bottom-left corner → bottom-right corner → middle-right
  ///
  /// Both paths have rounded corners with an 8-pixel radius.
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;
    paint.color = ColorsUtil.primary.withValues(alpha: 0.65);

    // Create top half of the border (from middle left to middle right via top)
    Path pathOne = Path();
    pathOne.moveTo(0, size.height / 2);

    pathOne.lineTo(0, 8);
    pathOne.quadraticBezierTo(0, 0, 8, 0);
    pathOne.lineTo(size.width - 8, 0);
    pathOne.quadraticBezierTo(size.width, 0, size.width, 8);
    pathOne.lineTo(size.width, size.height / 2);

    // Create bottom half of the border (from middle left to middle right via bottom)
    Path pathTwo = Path();
    pathTwo.moveTo(0, size.height / 2);

    pathTwo.lineTo(0, size.height - 8);
    pathTwo.quadraticBezierTo(0, size.height, 8, size.height);
    pathTwo.lineTo(size.width - 8, size.height);
    pathTwo.quadraticBezierTo(size.width, size.height, size.width, size.height - 8);
    pathTwo.lineTo(size.width, size.height / 2);

    // Animate both paths based on the current animation progress
    final animatedPathOne = BorderDrawUtil.createAnimatedPath(pathOne, animationPercent);
    final animatedPathTwo = BorderDrawUtil.createAnimatedPath(pathTwo, animationPercent);

    canvas.drawPath(animatedPathOne, paint);
    canvas.drawPath(animatedPathTwo, paint);
  }

  /// Determines whether the painter should repaint.
  ///
  /// Returns `true` to ensure the animation updates on every frame.
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
