import 'package:flutter/widgets.dart';

class AppScreen {
  const AppScreen();
  // ignore: lines_longer_than_80_chars
  static double get pixelRatio => WidgetsBinding.instance.window.devicePixelRatio;
  // ignore: lines_longer_than_80_chars
  static double get width => WidgetsBinding.instance.window.physicalSize.width / pixelRatio;
  // ignore: lines_longer_than_80_chars
  static double get height => WidgetsBinding.instance.window.physicalSize.height / pixelRatio;
  static double get hPercent => width / 100;
  static double get vPercent => height / 100;
  // ignore: lines_longer_than_80_chars
  static double get paddingLeft => WidgetsBinding.instance.window.viewPadding.left;
  // ignore: lines_longer_than_80_chars
  static double get paddingTop => WidgetsBinding.instance.window.viewPadding.top;
  // ignore: lines_longer_than_80_chars
  static double get paddingRight => WidgetsBinding.instance.window.viewPadding.right;
  // ignore: lines_longer_than_80_chars
  static double get paddingBottom => WidgetsBinding.instance.window.viewPadding.bottom;
  static double get safeWidth => width - paddingLeft - paddingRight;
  static double get safeHeight => height - paddingTop - paddingBottom;
  static double get safeHPercent => (width - safeWidth) / 100;
  static double get safeVPercent => (height - safeWidth) / 100;
}
