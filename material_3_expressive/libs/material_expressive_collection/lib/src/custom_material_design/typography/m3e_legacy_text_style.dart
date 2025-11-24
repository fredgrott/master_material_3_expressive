// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_expressive_collection/src/custom_material_design/typography/m3e_legacy_type_scale.dart';

/// Custom TextStyle to enforce the 15 emphasized
/// text styles in Material Expressive so they can
/// be added outside of the  SDK Text Theme temp
/// until SDK Text Theme updates/
class M3ELegacyTextStyle extends TextStyle {
  const M3ELegacyTextStyle({
    super.inherit,
    super.color,
    super.backgroundColor,
    super.fontSize,
    super.fontWeight,
    super.fontStyle,
    super.letterSpacing,
    super.wordSpacing,
    super.textBaseline,
    super.height,
    super.leadingDistribution,
    super.locale,
    super.foreground,
    super.background,
    super.shadows,
    super.fontFeatures,
    super.fontVariations,
    super.decoration,
    super.decorationColor,
    super.decorationStyle,
    super.decorationThickness,
    super.debugLabel,
    super.fontFamily,
    super.fontFamilyFallback,
    super.overflow,
    super.package,
  });

  // using a trick here in keeping them md3 named as that
  // way can use same machinery to create them using
  // functions later in another part of the scaffold view-model

  /// Display Large: The largest display text (57/64, -0.25)
  static const M3ELegacyTextStyle displayLarge = M3ELegacyTextStyle(
    fontSize: 57,
    height: 64 / 57,
    letterSpacing: -0.25,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 57),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Display Medium: Medium display text (45/52, 0)
  static const M3ELegacyTextStyle displayMedium = M3ELegacyTextStyle(
    fontSize: 45,
    height: 52 / 45,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 45),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Display Small: Small display text (36/44, 0)
  static const M3ELegacyTextStyle displaySmall = M3ELegacyTextStyle(
    fontSize: 36,
    height: 44 / 36,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 36),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Headline Large: Large headline (32/40, 0)
  static const M3ELegacyTextStyle headlineLarge = M3ELegacyTextStyle(
    fontSize: 32,
    height: 40 / 32,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 32),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Headline Medium: Medium headline (28/36, 0)
  static const M3ELegacyTextStyle headlineMedium = M3ELegacyTextStyle(
    fontSize: 28,
    height: 36 / 28,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 28),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Headline Small: Small headline (24/32, 0)
  static const M3ELegacyTextStyle headlineSmall = M3ELegacyTextStyle(
    fontSize: 24,
    height: 32 / 24,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 24),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Title Large: Large title (22/28, 0)
  static const M3ELegacyTextStyle titleLarge = M3ELegacyTextStyle(
    fontSize: 22,
    height: 28 / 22,
    letterSpacing: 0,
    fontWeight: FontWeight.w400,
    fontVariations:  <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 22),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Title Medium: Medium title (16/24, 0.15)
  static const M3ELegacyTextStyle titleMedium = M3ELegacyTextStyle(
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 16),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Title Small: Small title (14/20, 0.1)
  static const M3ELegacyTextStyle titleSmall = M3ELegacyTextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 14),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Body Large: Large body text (16/24, 0.5)
  static const M3ELegacyTextStyle bodyLarge = M3ELegacyTextStyle(
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 16),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Body Medium: Medium body text (14/20, 0.25)
  static const M3ELegacyTextStyle bodyMedium = M3ELegacyTextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 14),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Body Small: Small body text (12/16, 0.4)
  static const M3ELegacyTextStyle bodySmall = M3ELegacyTextStyle(
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0.4,
    fontWeight: FontWeight.w400,
    fontVariations: <FontVariation>[
      FontVariation('wght', 400),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 12),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Label Large: Large label (14/20, 0.1)
  static const M3ELegacyTextStyle labelLarge = M3ELegacyTextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 14),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Label Medium: Medium label (12/16, 0.5)
  static const M3ELegacyTextStyle labelMedium = M3ELegacyTextStyle(
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 12),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  /// Label Small: Small label (11/16, 0.5)
  static const M3ELegacyTextStyle labelSmall = M3ELegacyTextStyle(
    fontSize: 11,
    height: 16 / 11,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
      FontVariation('GRAD', 0),
      FontVariation('wdth', 100),
      FontVariation('ROND', 0),
      FontVariation('opsz', 11),
      FontVariation('CRSV', 0),
      FontVariation('sInt', 0),
      FontVariation('FILL', 0),
      FontVariation('HEXP', 0),
    ],
  );

  // --- Utility Methods ---

  /// Creates an adaptive text style that scales with user preferences.
  static TextStyle adaptive({
    required TextStyle baseStyle,
    required BuildContext context,
    double? minFontSize,
    double? maxFontSize,
  }) {
    final mediaQuery = MediaQuery.of(context);
    final textScaler = mediaQuery.textScaler;

    // Calculate adaptive font size
    var adaptiveFontSize = textScaler.scale(baseStyle.fontSize!);

    // Apply constraints
    if (minFontSize != null) {
      adaptiveFontSize = math.max(adaptiveFontSize, minFontSize);
    }
    if (maxFontSize != null) {
      adaptiveFontSize = math.min(adaptiveFontSize, maxFontSize);
    }

    // Adjust line height for scaled text
    double? adaptiveHeight;
    if (baseStyle.height != null) {
      adaptiveHeight = baseStyle.height! * (baseStyle.fontSize! / adaptiveFontSize);
    }

    return baseStyle.copyWith(fontSize: adaptiveFontSize, height: adaptiveHeight);
  }

  /// Creates a responsive display style based on screen size.
  static TextStyle responsiveDisplay(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (screenWidth < M3BreakpointToken.medium.value) {
      return M3ELegacyTextStyle.displaySmall;
    } else if (screenWidth < M3BreakpointToken.large.value) {
      return M3ELegacyTextStyle.displayMedium;
    } else {
      return M3ELegacyTextStyle.displayLarge;
    }
  }

  /// Creates a text style with enhanced readability for accessibility.
  static TextStyle enhancedReadability(TextStyle baseStyle) {
    return baseStyle.copyWith(
      letterSpacing: (baseStyle.letterSpacing ?? 0) + 0.12,
      height: math.max(baseStyle.height ?? 1.0, 1.6),
      fontWeight:
          FontWeight.values[math.min(
            FontWeight.values.indexOf(baseStyle.fontWeight ?? FontWeight.w400) + 1,
            FontWeight.values.length - 1,
          )],
    );
  }

  /// Creates a high contrast version of a text style.
  static TextStyle highContrast(TextStyle baseStyle) {
    return baseStyle.copyWith(
      fontWeight:
          FontWeight.values[math.min(
            FontWeight.values.indexOf(baseStyle.fontWeight ?? FontWeight.w400) + 1,
            FontWeight.values.length - 1,
          )],
    );
  }

  /// Creates a text style with custom font family and fallbacks.
  static TextStyle withFontFamily({
    required TextStyle baseStyle,
    required String fontFamily,
    List<String>? fontFamilyFallback,
  }) {
    return baseStyle.copyWith(
      fontFamily: fontFamily,
      fontFamilyFallback: fontFamilyFallback ?? M3ELegacyTypeScaleFonts.systemFontStack,
    );
  }

  /// Creates a monospace variant for code display.
  static TextStyle monoVariant(TextStyle baseStyle) {
    return baseStyle.copyWith(
      fontFamily: 'Roboto Mono',
      fontFamilyFallback: M3ELegacyTypeScaleFonts.monoFontStack,
      letterSpacing: 0,
    );
  }
}

/// Provides utility methods for working with type scale tokens.
extension M3ELegacyTextStyleUtils on M3ELegacyTextStyle {
  /// Gets the semantic category this token belongs to.
  M3ELegacyTypeScaleCategory get category => switch (this) {
    M3ELegacyTextStyle.displayLarge ||
    M3ELegacyTextStyle.displayMedium ||
    M3ELegacyTextStyle.displaySmall => M3ELegacyTypeScaleCategory.display,
    M3ELegacyTextStyle.headlineLarge ||
    M3ELegacyTextStyle.headlineMedium ||
    M3ELegacyTextStyle.headlineSmall => M3ELegacyTypeScaleCategory.headline,
    M3ELegacyTextStyle.titleLarge ||
    M3ELegacyTextStyle.titleMedium ||
    M3ELegacyTextStyle.titleSmall => M3ELegacyTypeScaleCategory.title,
    M3ELegacyTextStyle.bodyLarge ||
    M3ELegacyTextStyle.bodyMedium ||
    M3ELegacyTextStyle.bodySmall => M3ELegacyTypeScaleCategory.body,
    M3ELegacyTextStyle.labelLarge ||
    M3ELegacyTextStyle.labelMedium ||
    M3ELegacyTextStyle.labelSmall => M3ELegacyTypeScaleCategory.label,
    _ => M3ELegacyTypeScaleCategory.label, // TODO(fluttely): put default value here
  };

  /// Gets the line height in logical pixels.
  double get lineHeight => fontSize! * (height ?? 1.0);

  /// Checks if this token has a larger font size than another.
  bool isLargerThan(M3ELegacyTextStyle other) => fontSize! > other.fontSize!;

  /// Checks if this token has a smaller font size than another.
  bool isSmallerThan(M3ELegacyTextStyle other) => fontSize! < other.fontSize!;

  /// Returns the difference in font size between this and another token.
  double fontSizeDifferenceFrom(M3ELegacyTextStyle other) => (fontSize! - other.fontSize!).abs();

  /// Gets the next larger token in the same category, if available.
  M3ELegacyTextStyle? get nextLarger {
    final categoryTokens = category.tokens;
    final currentIndex = categoryTokens.indexOf(this);
    return currentIndex > 0 ? categoryTokens[currentIndex - 1] : null;
  }

  /// Gets the next smaller token in the same category, if available.
  M3ELegacyTextStyle? get nextSmaller {
    final categoryTokens = category.tokens;
    final currentIndex = categoryTokens.indexOf(this);
    return currentIndex < categoryTokens.length - 1 ? categoryTokens[currentIndex + 1] : null;
  }

  /// Creates a text style with specified color.
  TextStyle withColor(Color color) => copyWith(color: color);

  /// Creates a text style with specified font weight.
  TextStyle withWeight(FontWeight weight) => copyWith(fontWeight: weight);

  /// Creates a text style with specified font family.
  TextStyle withFontFamily(String family, {List<String>? fallbacks}) =>
      copyWith(fontFamily: family, fontFamilyFallback: fallbacks ?? M3ELegacyTypeScaleFonts.systemFontStack);

  /// Creates an adaptive text style that scales with user preferences.
  TextStyle adaptive(BuildContext context, {double? minFontSize, double? maxFontSize}) => M3ELegacyTextStyle.adaptive(
    baseStyle: this,
    context: context,
    minFontSize: minFontSize,
    maxFontSize: maxFontSize,
  );

  /// Creates a text style optimized for accessibility.
  TextStyle get accessible => M3ELegacyTextStyle.enhancedReadability(this);

  /// Creates a high contrast version of this text style.
  TextStyle get highContrast => M3ELegacyTextStyle.highContrast(this);

  /// Creates a monospace variant for code display.
  TextStyle get monospace => M3ELegacyTextStyle.monoVariant(this);

  /// Creates a responsive text style based on screen size.
  TextStyle responsive(BuildContext context) {
    if (category != M3ELegacyTypeScaleCategory.display) return this;
    return M3ELegacyTextStyle.responsiveDisplay(context);
  }

  /// Checks if this token is suitable for long-form reading.
  bool get isReadingOptimized => switch (this) {
    M3ELegacyTextStyle.bodyLarge || M3ELegacyTextStyle.bodyMedium => true,
    _ => false,
  };

  /// Checks if this token is suitable for UI labels.
  bool get isLabelOptimized => category == M3ELegacyTypeScaleCategory.label;

  /// Checks if this token is suitable for headings.
  bool get isHeadingOptimized => switch (category) {
    M3ELegacyTypeScaleCategory.display ||
    M3ELegacyTypeScaleCategory.headline ||
    M3ELegacyTypeScaleCategory.title => true,
    _ => false,
  };

  /// Creates a Text widget with this style.
  Text text(String data, {Color? color, TextAlign? textAlign, TextOverflow? overflow, int? maxLines}) => Text(
    data,
    style: color != null ? withColor(color) : this,
    textAlign: textAlign,
    overflow: overflow,
    maxLines: maxLines,
  );

  /// Creates a SelectableText widget with this style.
  SelectableText selectableText(String data, {Color? color, TextAlign? textAlign}) =>
      SelectableText(data, style: color != null ? withColor(color) : this, textAlign: textAlign);
}

/// Provides comparison utilities for type scale tokens.
extension M3ElegacyTextStyleTokenComparison on M3ELegacyTextStyle {
  /// Returns the token with the larger font size.
  M3ELegacyTextStyle max(M3ELegacyTextStyle other) => fontSize! >= other.fontSize! ? this : other;

  /// Returns the token with the smaller font size.
  M3ELegacyTextStyle min(M3ELegacyTextStyle other) => fontSize! <= other.fontSize! ? this : other;

  /// Calculates the scale factor between this and another token.
  double scaleFactorTo(M3ELegacyTextStyle other) => other.fontSize! / fontSize!;

  /// Checks if two tokens have similar font sizes (within 2px).
  bool isSimilarSizeTo(M3ELegacyTextStyle other) => fontSizeDifferenceFrom(other) <= 2.0;

  /// Checks if this token can be used as a visual replacement for another.
  bool isVisuallyCompatibleWith(M3ELegacyTextStyle other) => category == other.category || isSimilarSizeTo(other);
}
