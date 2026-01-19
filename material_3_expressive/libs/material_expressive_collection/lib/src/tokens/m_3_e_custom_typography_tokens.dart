// Copyright 2026 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from m3e_design package
// Copyright (c) 2025 Emily Moonstone
// MIT Licnese



// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_constructors_over_static_methods

import 'package:flutter/material.dart';
import 'package:material_expressive_collection/src/tokens/m_3_e_text_style_tokens.dart';

/// Expressive emphasis tweaks layered on top of baseline M3 type.
/// Keep line-height the same; only tune weight/letter-spacing for emphasis.
/// For most purposes, the M3ECustomEmphasized() construct is used.
@immutable
class M3ECustomEmphasized {
  final TextStyle expressiveDisplayLarge;
  final TextStyle expressiveDisplayMedium;
  final TextStyle expressiveDisplaySmall;
  final TextStyle expressiveHeadlineLarge;
  final TextStyle expressiveHeadlineMedium;
  final TextStyle expressiveHeadlineSmall;
  final TextStyle expressiveTitleLarge;
  final TextStyle expressiveTitleMedium;
  final TextStyle expressiveTitleSmall;
  final TextStyle expressiveBodyLarge;
  final TextStyle expressiveBodyMedium;
  final TextStyle expressiveBodySmall;
  final TextStyle expressiveLabelLarge;
  final TextStyle expressiveLabelMedium;
  final TextStyle expressiveLabelSmall;

  const M3ECustomEmphasized({
    required this.expressiveDisplayLarge,
    required this.expressiveDisplayMedium,
    required this.expressiveDisplaySmall,
    required this.expressiveHeadlineLarge,
    required this.expressiveHeadlineMedium,
    required this.expressiveHeadlineSmall,
    required this.expressiveTitleLarge,
    required this.expressiveTitleMedium,
    required this.expressiveTitleSmall,
    required this.expressiveBodyLarge,
    required this.expressiveBodyMedium,
    required this.expressiveBodySmall,
    required this.expressiveLabelLarge,
    required this.expressiveLabelMedium,
    required this.expressiveLabelSmall,
  });

  /// M3E guidance: slightly heavier weights and tighter tracking for large roles.
  /// Since I use varaible fonts it has to have those parameters.
  static M3ECustomEmphasized forBrightness(Brightness b) {
    // You could vary by brightness if desired; values below are neutral.
    return M3ECustomEmphasized(
      expressiveDisplayLarge: TextStyle(
        fontWeight: kFontWeights().expressiveDisplayLarge,
        letterSpacing: kFontTracking().expressiveDisplayLarge, // subtle tightening on big sizes
      ),
      expressiveDisplayMedium: TextStyle(
        fontWeight: kFontWeights().expressiveDisplayMedium,
        letterSpacing: kFontTracking().expressiveDisplayMedium, // subtle tightening on big sizes
      ),
      expressiveDisplaySmall: TextStyle(
        fontWeight: kFontWeights().expressiveDisplaySmall,
        letterSpacing: kFontTracking().expressiveDisplaySmall, // subtle tightening on big sizes
      ),
      expressiveHeadlineLarge: TextStyle(fontWeight: kFontWeights().expressiveHeadlineLarge, letterSpacing: kFontTracking().expressiveHeadlineLarge),
      expressiveHeadlineMedium: TextStyle(fontWeight: kFontWeights().expressiveHeadlineMedium, letterSpacing: kFontTracking().expressiveHeadlineMedium),
      expressiveHeadlineSmall: TextStyle(fontWeight: kFontWeights().expressiveHeadlineSmall, letterSpacing: kFontTracking().expressiveHeadlineSmall),
      expressiveTitleLarge: TextStyle(fontWeight: kFontWeights().expressiveTitleLarge, letterSpacing: kFontTracking().expressiveTitleLarge),
      expressiveTitleMedium: TextStyle(fontWeight: kFontWeights().expressiveTitleMedium, letterSpacing: kFontTracking().expressiveTitleMedium),
      expressiveTitleSmall: TextStyle(fontWeight: kFontWeights().expressiveTitleSmall, letterSpacing: kFontTracking().expressiveTitleSmall),
      expressiveBodyLarge: TextStyle(fontWeight: kFontWeights().expressiveBodyLarge, letterSpacing: kFontTracking().expressiveBodyLarge),
      expressiveBodyMedium: TextStyle(fontWeight: kFontWeights().expressiveBodyMedium, letterSpacing: kFontTracking().expressiveBodyMedium),
      expressiveBodySmall: TextStyle(fontWeight: kFontWeights().expressiveBodySmall, letterSpacing: kFontTracking().expressiveBodySmall),
      expressiveLabelLarge: TextStyle(fontWeight: kFontWeights().expressiveLabelLarge, letterSpacing: kFontTracking().expressiveLabelLarge),
      expressiveLabelMedium: TextStyle(fontWeight: kFontWeights().expressiveLabelMedium, letterSpacing: kFontTracking().expressiveLabelMedium),
      expressiveLabelSmall: TextStyle(fontWeight: kFontWeights().expressiveLabelSmall, letterSpacing: kFontTracking().expressiveLabelSmall),
    );
  }

  static M3ECustomEmphasized lerp(M3ECustomEmphasized a, M3ECustomEmphasized b, double t) => M3ECustomEmphasized(
    expressiveDisplayLarge: TextStyle.lerp(a.expressiveDisplayLarge, b.expressiveDisplayLarge, t)!,
    expressiveDisplayMedium: TextStyle.lerp(a.expressiveDisplayMedium, b.expressiveDisplayMedium, t)!,
    expressiveDisplaySmall: TextStyle.lerp(a.expressiveDisplaySmall, b.expressiveDisplaySmall, t)!,
    expressiveHeadlineLarge: TextStyle.lerp(a.expressiveHeadlineLarge, b.expressiveHeadlineLarge, t)!,
    expressiveHeadlineMedium: TextStyle.lerp(a.expressiveHeadlineMedium, b.expressiveHeadlineMedium, t)!,
    expressiveHeadlineSmall: TextStyle.lerp(a.expressiveHeadlineSmall, b.expressiveHeadlineSmall, t)!,
    expressiveTitleLarge: TextStyle.lerp(a.expressiveTitleLarge, b.expressiveTitleLarge, t)!,
    expressiveTitleMedium: TextStyle.lerp(a.expressiveTitleMedium, b.expressiveTitleMedium, t)!,
    expressiveTitleSmall: TextStyle.lerp(a.expressiveTitleSmall, b.expressiveTitleSmall, t)!,
    expressiveBodyLarge: TextStyle.lerp(a.expressiveBodyLarge, b.expressiveBodyLarge, t)!,
    expressiveBodyMedium: TextStyle.lerp(a.expressiveBodyMedium, b.expressiveBodyMedium, t)!,
    expressiveBodySmall: TextStyle.lerp(a.expressiveBodySmall, b.expressiveBodySmall, t)!,
    expressiveLabelLarge: TextStyle.lerp(a.expressiveLabelLarge, b.expressiveLabelLarge, t)!,
    expressiveLabelMedium: TextStyle.lerp(a.expressiveLabelMedium, b.expressiveLabelMedium, t)!,
    expressiveLabelSmall: TextStyle.lerp(a.expressiveLabelSmall, b.expressiveLabelSmall, t)!,
  );
}

/// Material 3 Expressive typography tokens.
/// - `base` starts from **M3 (Typography.material2021)**.
/// - Optionally remaps fonts: brand (UI) for display/headline/title/label
///   and plain (reading) for body.
/// - Adds an emphasized set (weight/tracking tweaks) for expressive hierarchy.
@immutable
class M3ECustomTypography {
  final TextTheme base;
  final M3ECustomEmphasized emphasized;

  const M3ECustomTypography({required this.base, required this.emphasized});

  /// Build default M3E typography from M3.
  ///
  /// [brandFontFamily] is typically your UI/brand face (e.g., Roboto Flex).
  /// [plainFontFamily] is typically your reading face (e.g., Roboto Serif).
  /// If you pass neither, you’ll get pure M3 defaults (no family swap),
  /// but still keep the M3E emphasized set for optional use.
  factory M3ECustomTypography.defaultFor(
    Brightness brightness, {
    String? brandFontFamily,
    String? plainFontFamily,
    TextTheme? baseOverride,
  }) {
    // 1) Start from Material 3 baseline type.
    final m3 = Typography.material2021();
    final TextTheme m3Base = baseOverride ?? (brightness == Brightness.dark ? m3.white : m3.black);

    // 2) Optionally map brand/plain families to role groups (M3E guidance).
    final TextTheme baseWithFamilies = _applyFamilies(m3Base, brand: brandFontFamily, plain: plainFontFamily);

    // 3) Provide emphasized deltas (weights/tracking).
    return M3ECustomTypography(base: baseWithFamilies, emphasized: M3ECustomEmphasized.forBrightness(brightness));
  }

  /// Lerp the full token set.
  static M3ECustomTypography lerp(M3ECustomTypography a, M3ECustomTypography b, double t) => M3ECustomTypography(
    base: TextTheme.lerp(a.base, b.base, t),
    emphasized: M3ECustomEmphasized.lerp(a.emphasized, b.emphasized, t),
  );

  /// Apply brand/plain families: brand → display/headline/title/label,
  /// plain → body. If a family is null, keep the original.
  static TextTheme _applyFamilies(TextTheme t, {String? brand, String? plain}) {
    TextStyle? _withFam(TextStyle? s, String? fam) => fam == null ? s : s?.copyWith(fontFamily: fam);

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

  const ButtonFontSize({this.xs = 14, this.sm = 14, this.md = 16, this.lg = 20, this.xl = 24});
}

extension M3EButtonFontSizeExt on M3ECustomTypography {
  ButtonFontSize get buttonFontSize => const ButtonFontSize();
}
