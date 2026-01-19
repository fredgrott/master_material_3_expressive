// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:universal_platform/universal_platform.dart';

/// BuildContextExt is the extensions that
/// are not MediaQuery based.
///
/// @author Fredrick Allan Grott
extension BuildContextExt on BuildContext {

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  TextTheme get primaryTextTheme => theme.primaryTextTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  NavigatorState get navigator => Navigator.of(this);

  FocusScopeNode get focusScope => FocusScope.of(this);

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);
}

extension WidgetStateHelpers on Iterable<WidgetState> {
  bool get isHovered => contains(WidgetState.hovered);
  bool get isFocused => contains(WidgetState.focused);
  bool get isPressed => contains(WidgetState.pressed);
  bool get isDragged => contains(WidgetState.dragged);
  bool get isSelected => contains(WidgetState.selected);
  bool get isScrolledUnder => contains(WidgetState.scrolledUnder);
  bool get isDisabled => contains(WidgetState.disabled);
  bool get isError => contains(WidgetState.error);
}

extension IterableExtensions on Iterable {
  bool containsAny(Iterable<Object?> other) => other.any((e) => contains(e));
}

/// Changed this from GSkinner's SizedContext package as with fold-ables
/// on both Android and iOS want an always valid size. That is accomplushed
/// by grabbing a FlutterView.display Display object.
///
/// @author Fredrick Allan Grott
extension MQExt on BuildContext {

  /// Returns pixelsPerInch
  double get pixelsPerInch => UniversalPlatform.isAndroid || UniversalPlatform.isIOS? 150 : 96;

  /// Returns brightness from MediaQuery as a bool
  bool get isLight => MediaQuery.of(this).platformBrightness == Brightness.light;



  /// Returns if Orientation is landscape
  bool get isLandscape => MediaQuery.orientationOf(this) == Orientation.landscape;

  /// Returns a display object of FlutterView
  Display get displayObject => View.of(this).display;

  /// Returns devicePixelRation from the display object
  double get devicePixelRatio => displayObject.devicePixelRatio;


  /// Returns same as MediaQuery.of(context).size
  /// but will only rebuild if stuff changes.
  /// Returns that actual device size rather than the logical size
  ///
  /// It also eliminates having to MediaQuery DeviceFeatures hinge
  /// as them canonical layouts can be on size alone.
  Size get sizePx => displayObject.size;

  /// Returns same as MediaQuery.of(context).size.width
  double get widthPx => sizePx.width;

  /// Returns same as MediaQuery.of(context).height
  double get heightPx => sizePx.height;

  /// Returns diagonal screen pixels
  double get diagonalPx {
    final Size s = sizePx;
    return sqrt((s.width * s.width) + (s.height * s.height));
  }

  /// Returns pixel size in Inches
  Size get sizeInches {
    final Size pxSize = sizePx;
    return Size(pxSize.width / pixelsPerInch, pxSize.height / pixelsPerInch);
  }

  /// Returns screen width in Inches
  double get widthInches => sizeInches.width;

  /// Returns screen height in Inches
  double get heightInches => sizeInches.height;

  /// Returns screen diagonal in Inches
  double get diagonalInches => diagonalPx / pixelsPerInch;

  /// Returns fraction (0-1) of screen width in pixels
  double widthPct(double fraction) => fraction * widthPx;

  /// Returns fraction (0-1) of screen height in pixels
  double heightPct(double fraction) => fraction * heightPx;

}
