// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the Material_3_Expressive    package
// MIT License by Emily Moonstone 2025


// ignore_for_file: prefer_constructors_over_static_methods, dead_code

import 'package:flutter/material.dart';
import 'package:material_expressive_design/src/tokens/m3e_colors.dart';
import 'package:material_expressive_design/src/tokens/m3e_motion.dart';
import 'package:material_expressive_design/src/tokens/m3e_shapes.dart';
import 'package:material_expressive_design/src/tokens/m3e_spacing.dart';
import 'package:material_expressive_design/src/tokens/m3e_typography.dart';


/// M3ETheme defined in ThemeExtension terms so
/// that we can load design system changes not in
/// the SDK just yet using the ThemeExtension machinery.
///
/// ```dart
////
//// Widget build(BuildContext context){
///    final light = ColorScheme.fromSeed(dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
///        contrastLevel: 0.1,
///        seedColor: Colors.purple, brightness: Brightness.light).toM3EThemeData();
///    final dark = ColorScheme.fromSeed(dynamicSchemeVariant: DynamicSchemeVariant.tonalSpot,
///        contrastLevel: 0.1,
///        seedColor: Colors.purple, brightness: Brightness.dark).toM3EThemeData();
///    return MaterialApp(
///       title: "Me".
///       theme: light,
///       darkTheme: dark,
///       themeMode: ThemeMode.system,
///       home: Child(),
///       debugShowCheckedModeBanner: false,
///     );
///  }
///  ```
///
/// The toM3ETHeme method auto installs the ThemeExtension.
/// In situations where you use FlexColorScheme package to create
/// a generated ThemeData you then supply that as the base
/// parameter to the toM3ETHeme method.
///
/// Other 3rd party stuff such as flutter_m3shapes, split_screen (foldable
/// canonical layout support), material_symbols_icons, and window_size_classes
/// are being imported by the material expressive collection package
/// which is the global package use to import everything into flutter app projects.
///
///
@immutable
class M3ETheme extends ThemeExtension<M3ETheme> {
  final M3EColors colors;
  final M3ETypography typography;
  final M3EShapes shapes;
  final M3ESpacing spacing;
  final M3EMotion motion;

  const M3ETheme({
    required this.colors,
    required this.typography,
    required this.shapes,
    required this.spacing,
    required this.motion,
  });

  // Convenience proxy for commonly used text styles in packages (m3e.type.*)
  @override
  _M3ETypeProxy get type => _M3ETypeProxy(typography);

  static M3ETheme defaults(ColorScheme scheme, ) => M3ETheme(
        colors: M3EColors.from(scheme),
        typography: M3ETypography.defaultFor(scheme.brightness),
        shapes: M3EShapes.expressive(),
        spacing: const M3ESpacing.regular(),
        motion: const M3EMotion.legacyNExpressive(),
      );

  @override
  M3ETheme copyWith({
    M3EColors? colors,
    M3ETypography? typography,
    M3EShapes? shapes,
    M3ESpacing? spacing,
    M3EMotion? motion,
  }) =>
      M3ETheme(
        colors: colors ?? this.colors,
        typography: typography ?? this.typography,
        shapes: shapes ?? this.shapes,
        spacing: spacing ?? this.spacing,
        motion: motion ?? this.motion,
      );

  @override
  M3ETheme lerp(covariant M3ETheme? other, double t) {
    if (other == null) return this;
    return M3ETheme(
      colors: M3EColors.lerp(colors, other.colors, t),
      typography: M3ETypography.lerp(typography, other.typography, t),
      shapes: M3EShapes.lerp(shapes, other.shapes, t),
      spacing: M3ESpacing.lerp(spacing, other.spacing, t),
      motion: M3EMotion.lerp(motion, other.motion, t),
    );
  }
}

/// Inject (or replace) the M3ETheme extension on a ThemeData.
ThemeData withM3ETheme(ThemeData base, {M3ETheme? override}) {
  // Use any existing M3ETheme, else the provided override, else defaults.
  final current = base.extension<M3ETheme>();
  final next = override ?? current ?? M3ETheme.defaults(base.colorScheme);

  // Merge existing extensions (values) with our M3ETheme, replacing prior ones.
  final Iterable<ThemeExtension<dynamic>> existing = base.extensions.values;
  final List<ThemeExtension<dynamic>> merged = <ThemeExtension<dynamic>>[];
  for (final e in existing) {
    if (e is! M3ETheme) {
      merged.add(e);
    }
  }
  merged.add(next);

  return base.copyWith(extensions: merged);
}

// Internal proxy for typography shortcuts used by components.
class _M3ETypeProxy {
  const _M3ETypeProxy(this._t);
  final M3ETypography _t;

  TextStyle get _empty => const TextStyle();
  TextStyle get displayLarge => _t.base.displayLarge ?? _empty;
  TextStyle get displayMedium => _t.base.displayMedium ?? _empty;
  TextStyle get displaySmall => _t.base.displaySmall ?? _empty;
  TextStyle get headlineLarge => _t.base.headlineLarge ?? _empty;
  TextStyle get headlineMedium => _t.base.headlineMedium ?? _empty;
  TextStyle get headlineSmall => _t.base.headlineSmall ?? _empty;
  TextStyle get titleLarge => _t.base.titleLarge ?? _empty;
  TextStyle get titleMedium => _t.base.titleMedium ?? _empty;
  TextStyle get titleSmall => _t.base.titleSmall ?? _empty;
  TextStyle get bodyLarge => _t.base.bodyLarge ?? _empty;
  TextStyle get bodyMedium => _t.base.bodyMedium ?? _empty;
  TextStyle get bodySmall => _t.base.bodySmall ?? _empty;
  TextStyle get labelLarge => _t.base.labelLarge ?? _empty;
  TextStyle get labelMedium => _t.base.labelMedium ?? _empty;
  TextStyle get labelSmall => _t.base.labelSmall ?? _empty;

  // need emphasized accessors too
  TextStyle get emphasizedDisplayLarge =>_t.emphasized.displayLarge;
  TextStyle get emphasizedDisplayMedium => _t.emphasized.displayMedium;
  TextStyle get emphasizedDisplaySmall => _t.emphasized.displaySmall;
  TextStyle get emphasizedHeadlineLarge => _t.emphasized.headlineLarge;
  TextStyle get emphasizedHeadlineMedium => _t.emphasized.headlineMedium;
  TextStyle get emphasizedHeadlineSmall => _t.emphasized.headlineSmall;
  TextStyle get emphasizedTitleLarge => _t.emphasized.titleLarge;
  TextStyle get emphasizedTitleMedium => _t.emphasized.titleMedium;
  TextStyle get emphasizedTitleSmall => _t.emphasized.titleSmall;
  TextStyle get emphasizedBodyLarge => _t.emphasized.bodyLarge;
  TextStyle get emphasizedBodyMedium => _t.emphasized.bodyMedium;
  TextStyle get emphasizedBodySmall => _t.emphasized.bodySmall;
  TextStyle get emphasizedLabelLarge => _t.emphasized.labelLarge;
  TextStyle get emphasizedLabelMedium => _t.emphasized.labelMedium;
  TextStyle get emphasizedLabelSmall => _t.emphasized.labelSmall;


}

// Accessors for getting the M3E theme from ThemeData via Theme.of(context).m3e
extension M3EThemeAccessors on ThemeData {
  // Returns the installed M3ETheme; in release builds falls back to defaults
  M3ETheme get m3e {
    final e = extension<M3ETheme>();
    assert(
      e != null,
      'M3ETheme is not installed on ThemeData. Wrap your app theme with withM3ETheme(...)',
    );
    return e ?? M3ETheme.defaults(colorScheme);
  }
}

// Convenience creation helpers to install M3ETheme with minimal boilerplate.
extension M3EColorSchemeAccessors on ColorScheme {
  /// Creates a ThemeData from this ColorScheme and installs the M3ETheme
  /// extension in one call.
  ///
  /// Example:
  ///   final theme = ColorScheme.fromSeed(seedColor: Colors.teal).toM3EThemeData();
  ThemeData toM3EThemeData({
    bool useMaterial3 = true,
    M3ETheme? override,
    ThemeData? base,
  }) {
    final ThemeData seed =
        base ?? ThemeData(useMaterial3: useMaterial3, colorScheme: this);
    return withM3ETheme(seed, override: override);
  }
}
