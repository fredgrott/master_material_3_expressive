// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the Material_3_Expressive    package
// MIT License by Emily Moonstone 2025





// ignore_for_file: prefer_constructors_over_static_methods, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:material_expressive_design/src/tokens/m3e_emphasized.dart';



/// Material 3 Expressive typography tokens.
/// - `base` starts from **M3 (Typography.material2021)**.
/// - Optionally remaps fonts: brand (UI) for display/headline/title/label
///   and plain (reading) for body.
/// - Adds an emphasized set (weight/tracking tweaks) for expressive hierarchy.
@immutable
class M3ETypography {
  final TextTheme base;
  final M3EEmphasized emphasized;




  const M3ETypography({required this.base, required this.emphasized});

  /// Build default M3E typography from M3.
  ///
  /// [brandFontFamily] is typically your UI/brand face (e.g., Roboto Flex).
  /// [plainFontFamily] is typically your reading face (e.g., Roboto Serif).
  /// If you pass neither, you’ll get pure M3 defaults (no family swap),
  /// but still keep the M3E emphasized set for optional use.
  ///
  /// Emphasized textstyle override parameter added so that can equally
  /// define custom fonts using the google_fonts package. So you
  /// will create that function like this:
  ///
  /// ```dart
  ///   emphasizedOverride(birghtness) {
  ///
  ///     ColorScheme tempColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue, brightness: brightness, dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot, contrastLevel: 0.0,);
  ///     final Color dark = tempColorScheme.brightness == Brightness.light ? tempColorScheme.onSurface : tempColorScheme.surface;
  ///     final Color light = tempColorScheme.brightness == Brightness.light ? tempColorScheme.surface : tempColorScheme.onSurface;
  ///
  ///     return M3Emphasized(
  ///        displayLarge: GoogleFonts.name(textStyle: TextStyle(color: brightness == Brightness.light ? dark : light,
  ///          decorationColor: brightness == Brightness.light ? dark: light,),
  /// ```
  /// Basically copying what is in the M3Emphaiszed class return block. The baseOverride(brightness)
  /// function is implemented the same way except using the non emphasized styles.
  factory M3ETypography.defaultFor(
    Brightness brightness, {
    String? brandFontFamily,
    String? plainFontFamily,
    TextTheme? baseOverride,
    // this here will be a function that has the brightness parameter and
    // returns a custom M3Emphasized with GoogleFonts constructors.
    M3EEmphasized? emphasizedOverride,
  }) {
    // 1) Start from Material 3 baseline type.
    final m3 = Typography.material2021();
    final TextTheme m3Base =
        baseOverride ?? (brightness == Brightness.dark ? m3.white : m3.black);

    // 2) Optionally map brand/plain families to role groups (M3E guidance).
    final TextTheme baseWithFamilies = _applyFamilies(
      m3Base,
      brand: brandFontFamily,
      plain: plainFontFamily,
    );

    // 3) Provide emphasized deltas (weights/tracking).
    return M3ETypography(
      base: baseWithFamilies,

      emphasized: emphasizedOverride ?? M3EEmphasized.forBrightness(brightness, brandFontFamily, plainFontFamily),

    );
  }

  /// Lerp the full token set.
  static M3ETypography lerp(M3ETypography a, M3ETypography b, double t) =>
      M3ETypography(
        base: TextTheme.lerp(a.base, b.base, t),
        emphasized: M3EEmphasized.lerp(a.emphasized, b.emphasized, t),
      );

  /// Apply brand/plain families: brand → display/headline/title/label,
  /// plain → body. If a family is null, keep the original.
  static TextTheme _applyFamilies(
    TextTheme t, {
    String? brand,
    String? plain,
  }) {
    TextStyle? _withFam(TextStyle? s, String? fam) =>
        fam == null ? s : s?.copyWith(fontFamily: fam);

    return t.copyWith(
      // Brand / UI voice
      displayLarge: _withFam(t.displayLarge, brand),
      displayMedium: _withFam(t.displayMedium, brand),
      displaySmall: _withFam(t.displaySmall, brand),
      headlineLarge: _withFam(t.headlineLarge, brand),
      headlineMedium: _withFam(t.headlineMedium, brand),
      headlineSmall: _withFam(t.headlineSmall, brand),
      titleLarge: _withFam(t.titleLarge, brand),
      titleMedium: _withFam(t.titleMedium, brand),
      titleSmall: _withFam(t.titleSmall, brand),
      labelLarge: _withFam(t.labelLarge, brand),
      labelMedium: _withFam(t.labelMedium, brand),
      labelSmall: _withFam(t.labelSmall, brand),

      // Reading voice
      bodyLarge: _withFam(t.bodyLarge, plain),
      bodyMedium: _withFam(t.bodyMedium, plain),
      bodySmall: _withFam(t.bodySmall, plain),



    );
  }
}

@immutable
class ButtonFontSize {
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;

  const ButtonFontSize({
    this.xs = 14,
    this.sm = 14,
    this.md = 16,
    this.lg = 20,
    this.xl = 24,
  });
}

extension M3EButtonFontSizeExt on M3ETypography {
  ButtonFontSize get buttonFontSize => const ButtonFontSize();
}
