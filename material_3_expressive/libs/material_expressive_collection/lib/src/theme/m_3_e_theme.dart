// Copyright 2026 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from m3e_design package
// Copyright (c) 2025 Emily Moonstone
// MIT Licnese

// ignore_for_file: prefer_constructors_over_static_methods

import 'package:flutter/material.dart';
import 'package:material_expressive_collection/src/tokens/m_3_e_custom__shapes.dart';
import 'package:material_expressive_collection/src/tokens/m_3_e_custom_color_tokens.dart';
import 'package:material_expressive_collection/src/tokens/m_3_e_custom_motion.dart';
import 'package:material_expressive_collection/src/tokens/m_3_e_custom_spacing.dart';
import 'package:material_expressive_collection/src/tokens/m_3_e_custom_typography_tokens.dart';

@immutable
class M3ETheme extends ThemeExtension<M3ETheme> {
  final M3ECustomColors colors;
  final M3ECustomTypography typography;
  final M3ECustomShapes shapes;
  final M3ECustomSpacing spacing;
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

  static M3ETheme defaults(ColorScheme scheme) => M3ETheme(
    colors: M3ECustomColors.from(scheme),
    typography: M3ECustomTypography.defaultFor(scheme.brightness),
    shapes: M3ECustomShapes.expressive(),
    spacing: const M3ECustomSpacing.regular(),
    motion: const M3EMotion.expressive(),
  );

  @override
  M3ETheme copyWith({
    M3ECustomColors? colors,
    M3ECustomTypography? typography,
    M3ECustomShapes? shapes,
    M3ECustomSpacing? spacing,
    M3EMotion? motion,
  }) => M3ETheme(
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
      colors: M3ECustomColors.lerp(colors, other.colors, t),
      typography: M3ECustomTypography.lerp(typography, other.typography, t),
      shapes: M3ECustomShapes.lerp(shapes, other.shapes, t),
      spacing: M3ECustomSpacing.lerp(spacing, other.spacing, t),
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
  final M3ECustomTypography _t;

  TextStyle get _empty => const TextStyle();
  TextStyle get displayLarge => _t.base.displayLarge ?? _empty;
  TextStyle get displayMedium => _t.base.displayMedium ?? _empty;
  TextStyle get displpaySmall => _t.base.displaySmall ?? _empty;
  TextStyle get headlineLarge => _t.base.headlineLarge ?? _empty;
  TextStyle get titleLarge => _t.base.titleLarge ?? _empty;
  TextStyle get titleMedium => _t.base.titleMedium ?? _empty;
  TextStyle get titleSmall => _t.base.titleSmall ?? _empty;
  TextStyle get bodyLarge => _t.base.bodyLarge ?? _empty;
  TextStyle get bodyMedium => _t.base.bodyMedium ?? _empty;
  TextStyle get bodySmall => _t.base.bodySmall ?? _empty;
  TextStyle get labelLarge => _t.base.labelLarge ?? _empty;
  TextStyle get labelMedium => _t.base.labelMedium ?? _empty;
  TextStyle get labelSmall => _t.base.labelSmall ?? _empty;
}

// Accessors for getting the M3E theme from ThemeData via Theme.of(context).m3e
extension M3EThemeAccessors on ThemeData {
  // Returns the installed M3ETheme; in release builds falls back to defaults
  M3ETheme get m3e {
    final e = extension<M3ETheme>();
    assert(e != null, 'M3ETheme is not installed on ThemeData. Wrap your app theme with withM3ETheme(...)');
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
  ThemeData toM3EThemeData({bool useMaterial3 = true, M3ETheme? override, ThemeData? base}) {
    final ThemeData seed = base ?? ThemeData(useMaterial3: useMaterial3, colorScheme: this);
    return withM3ETheme(seed, override: override);
  }
}
