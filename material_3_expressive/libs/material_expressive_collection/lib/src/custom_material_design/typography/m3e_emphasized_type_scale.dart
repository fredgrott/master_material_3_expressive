// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:material_expressive_collection/src/custom_material_design/typography/m3e_emphasized_text_style.dart';

/// Material Design 3 type scale font family constants.
///
/// These font families are optimized for Material Design 3 typography system,
/// providing excellent readability and visual hierarchy across different
/// platforms and screen sizes.
///
abstract interface class M3EEmphasizedTypeScaleFonts {
  /// Primary Material Design font family.
  // static const String roboto = 'Roboto';

  /// System font stack with fallbacks.
  static const List<String> systemFontStack = [
    'Roboto',
    '-apple-system',
    'BlinkMacSystemFont',
    'Segoe UI',
    'Helvetica Neue',
    'Arial',
    'sans-serif',
  ];

  /// Monospace font stack for code display.
  static const List<String> monoFontStack = [
    'Roboto Mono',
    'SFMono-Regular',
    'Monaco',
    'Consolas',
    'Liberation Mono',
    'Courier New',
    'monospace',
  ];
}

enum M3EEmphasizedTypeScaleCategory {
  /// Display text - large, impactful text for hero content.
  display,

  /// Headline text - prominent headings and titles.
  headline,

  /// Title text - medium-emphasis headings and subtitles.
  title,

  /// Body text - primary content text in various sizes.
  body,

  /// Label text - supporting text for UI components.
  label;

  /// Gets all tokens that belong to this category.
  List<M3EEmphasizedTextStyle> get tokens => switch (this) {
    display => [
      M3EEmphasizedTextStyle.displayLarge,
      M3EEmphasizedTextStyle.displayMedium,
      M3EEmphasizedTextStyle.displaySmall,
    ],
    headline => [
      M3EEmphasizedTextStyle.headlineLarge,
      M3EEmphasizedTextStyle.headlineMedium,
      M3EEmphasizedTextStyle.headlineSmall,
    ],
    title => [M3EEmphasizedTextStyle.titleLarge, M3EEmphasizedTextStyle.titleMedium, M3EEmphasizedTextStyle.titleSmall],
    body => [M3EEmphasizedTextStyle.bodyLarge, M3EEmphasizedTextStyle.bodyMedium, M3EEmphasizedTextStyle.bodySmall],
    label => [M3EEmphasizedTextStyle.labelLarge, M3EEmphasizedTextStyle.labelMedium, M3EEmphasizedTextStyle.labelSmall],
  };

  /// Gets the largest token in this category.
  M3EEmphasizedTextStyle get largest => tokens.first;

  /// Gets the smallest token in this category.
  M3EEmphasizedTextStyle get smallest => tokens.last;
}
