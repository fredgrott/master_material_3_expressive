// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the Material_3_Expressive    package
// MIT License by Emily Moonstone 2025





// ignore_for_file: prefer_constructors_over_static_methods

import 'package:flutter/material.dart';


/// Expressive emphasis tweaks layered on top of baseline M3 type.
/// Keep line-height the same; only tune weight/letter-spacing for emphasis.
///
/// Original author did not have this class fully flushed out.
/// Added the full 15 styles using the variable font axes listed in
/// the material expressive spec. Also, added additional code to use
/// the brightness passed parameter to compute the correct color
/// roles to apply to color and decorationColor for both light and
/// and dark themes.
///
///
@immutable
class M3EEmphasized {
  final TextStyle displayLarge;
  final TextStyle displayMedium;
  final TextStyle displaySmall;
  final TextStyle headlineLarge;
  final TextStyle headlineMedium;
  final TextStyle headlineSmall;
  final TextStyle titleLarge;
  final TextStyle titleMedium;
  final TextStyle titleSmall;
  final TextStyle bodyLarge;
  final TextStyle bodyMedium;
  final TextStyle bodySmall;
  final TextStyle labelLarge;
  final TextStyle labelMedium;
  final TextStyle labelSmall;

  const M3EEmphasized({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  /// M3E guidance: slightly heavier weights and tighter tracking for large roles.
  static M3EEmphasized forBrightness(Brightness b, String? brand, String? plain) {

     // dark = colorScheme.onSurface for Brightness.light and colorSchem.surface for Brightness.dark
     // light = colorScheme.surface for Brightness.dark and colorScheme.onSurface for Brightness.light
    // black and white Typography instances are then converted via copyWith
    // black displayColor: dark, bodyColor: dark, decorationColor: dark
    // white displayColor: light, bodyColor: light, decorationColor: light
    // per Typography.material2021 constructor
    // so create a baseline temp colorScheme based on brightness passed and
    // use that to compute the displayColor, bodyColor, and decorationColor

    // ignore: avoid_redundant_argument_values
    final ColorScheme tempColorScheme = ColorScheme.fromSeed(seedColor: Colors.blue, brightness: b, dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot, contrastLevel: 0.0,);

    // for displayColor, bodyColor, and decorationColor
    //  b == Brightness.light ? dark : light
    final Color dark = tempColorScheme.brightness == Brightness.light ? tempColorScheme.onSurface : tempColorScheme.surface;
    final Color light = tempColorScheme.brightness == Brightness.light ? tempColorScheme.surface : tempColorScheme.onSurface;




    // You could vary by brightness if desired; values below are neutral.
    return M3EEmphasized(
      displayLarge: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.display-large",
        fontSize:   57 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: -0.25, // subtle tightening on big sizes
        height: 64,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 57), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),



      displayMedium: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.display-medium",
        fontSize:   45 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0, // subtle tightening on big sizes
        height: 52,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 45), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),

      displaySmall: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.display-small",
        fontSize:   36 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0, // subtle tightening on big sizes
        height: 44,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 36), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
      headlineLarge: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.headline-large",
        fontSize:   32 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0, // subtle tightening on big sizes
        height: 40,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 32), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
      headlineMedium: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.headline-medkium",
        fontSize:   28 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0, // subtle tightening on big sizes
        height: 36,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 28), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
      headlineSmall: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.headline-small",
        fontSize:   24 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0, // subtle tightening on big sizes
        height: 32,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 24), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),

      titleLarge: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.title-large",
        fontSize:   22 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0, // subtle tightening on big sizes
        height: 28,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 22), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),

      titleMedium: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.title-medium",
        fontSize:   16 ,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0.15, // subtle tightening on big sizes
        height: 24,
        fontVariations: const <FontVariation>[FontVariation('wght', 700), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 16), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
      titleSmall: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.title-small",
        fontSize:   14 ,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0.1, // subtle tightening on big sizes
        height: 20,
        fontVariations: const <FontVariation>[FontVariation('wght', 700), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 14), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),

      bodyLarge: TextStyle(
        fontFamily: plain,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.body-large",
        fontSize:   16 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0.5, // subtle tightening on big sizes
        height: 24,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 16), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),

      bodyMedium: TextStyle(
        fontFamily: plain,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.body-medium",
        fontSize:   14 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0.25, // subtle tightening on big sizes
        height: 20,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 14), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
      bodySmall: TextStyle(
        fontFamily: plain,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.body-small",
        fontSize:   12 ,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0.4, // subtle tightening on big sizes
        height: 16,
        fontVariations: const <FontVariation>[FontVariation('wght', 500), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 12), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
      labelLarge: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.label-large",
        fontSize:   14 ,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0.1, // subtle tightening on big sizes
        height: 20,
        fontVariations: const <FontVariation>[FontVariation('wght', 700), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 14), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
      labelMedium: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.label-medium",
        fontSize:   12 ,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0.5, // subtle tightening on big sizes
        height: 16,
        fontVariations: const <FontVariation>[FontVariation('wght', 700), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 12), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
      labelSmall: TextStyle(
        fontFamily: brand,
        color: b == Brightness.light ? dark : light,
        decorationColor: b == Brightness.light ? dark: light,
        debugLabel: "md.sys.typescale.emphasized.label-small",
        fontSize:   11 ,
        fontWeight: FontWeight.w700,
        fontStyle: FontStyle.normal,
        // in design spec doc its labeled as tracking
        letterSpacing: 0.5, // subtle tightening on big sizes
        height: 14,
        fontVariations: const <FontVariation>[FontVariation('wght', 700), FontVariation('grad', 0), FontVariation('wdth', 100),
          FontVariation('ROND', 0), FontVariation('opsz', 12), FontVariation('CRSV', 0), FontVariation('sint', 0),
          FontVariation('FiLL', 0), FontVariation('HEXP',0)],
      ),
    );
  }

  static M3EEmphasized lerp(M3EEmphasized a, M3EEmphasized b, double t) =>
      M3EEmphasized(
        displayLarge: TextStyle.lerp(a.displayLarge, b.displayLarge, t)!,
        displayMedium: TextStyle.lerp(a.displayMedium, b.displayMedium, t)!,
        displaySmall: TextStyle.lerp(a.displaySmall, b.displaySmall, t)!,
        headlineLarge: TextStyle.lerp(a.headlineLarge, b.headlineLarge, t)!,
        headlineMedium: TextStyle.lerp(a.headlineMedium, b.headlineMedium, t)!,
        headlineSmall: TextStyle.lerp(a.headlineSmall, b.headlineSmall, t)!,
        titleLarge: TextStyle.lerp(a.titleLarge, b.titleLarge, t)!,
        titleMedium: TextStyle.lerp(a.titleMedium, b.titleMedium, t)!,
        titleSmall: TextStyle.lerp(a.titleSmall, b.titleSmall, t)!,
        bodyLarge: TextStyle.lerp(a.bodyLarge, b.bodyLarge, t)!,
        bodyMedium: TextStyle.lerp(a.bodyMedium, b.bodyMedium, t)!,
        bodySmall: TextStyle.lerp(a.bodySmall, b.bodySmall, t)!,
        labelLarge: TextStyle.lerp(a.labelLarge, b.labelLarge, t)!,
        labelMedium: TextStyle.lerp(a.labelMedium, b.labelMedium, t)!,
        labelSmall: TextStyle.lerp(a.labelSmall, b.labelSmall, t)!,

      );
}
