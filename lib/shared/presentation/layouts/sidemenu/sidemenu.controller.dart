import 'package:flutter/material.dart';

/// Controller for managing side menu state and animations.
///
/// Uses [ChangeNotifier] for efficient state management with Provider.
/// Handles open/close animations, swipe gestures, and velocity-based snapping.
class SideMenuController extends ChangeNotifier {
  final AnimationController animationController;
  final double slidePercentage;

  SideMenuController({
    required TickerProvider vsync,
    this.slidePercentage = 0.80,
    Duration duration = const Duration(milliseconds: 120),
  }) : animationController = AnimationController(vsync: vsync, duration: duration);

  bool _isOpen = false;
  bool get isOpen => _isOpen;

  double get progress => animationController.value;

  Animation<double> get animation =>
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut);

  void toggle() => _isOpen ? close() : open();

  void open() {
    animationController.forward();
    _isOpen = true;
    notifyListeners();
  }

  void close() {
    animationController.reverse();
    _isOpen = false;
    notifyListeners();
  }

  void handleDragUpdate(double delta, double screenWidth) {
    final dragPercent = delta / (screenWidth * slidePercentage);
    animationController.value += dragPercent;
  }

  void handleDragEnd(double velocity) {
    const threshold = 300.0;
    final shouldOpen = switch (velocity) {
      > threshold => true,
      < -threshold => false,
      _ => animationController.value > 0.5,
    };
    shouldOpen ? open() : close();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
