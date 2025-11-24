// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:material_design/material_design.dart';
import 'package:material_expressive_collection/src/custom_material_design/typography/m3e_emphasized_type_scale.dart';

/// Custom TextStyle to enforce the 15 emphasized
/// text styles in Material Expressive so they can
/// be added outside of the  SDK Text Theme temp
/// until SDK Text Theme updates.
///
/// While Legacy is used for TextTheme and PrimaryTextTheme,
/// This is injected as a BuildContext extension
/// to inject all the non-primary and primary
/// text styles needed for the app and those will then
/// be used to override widget defaults to get the
/// emphasized text styles.
///
/// Keep in mind the m3e recommendations is for these
/// components to use emphasized styles:
///   Badges
///   Buttons(primary actions nav for example)
///   Extended FAB
///   Selected list items
///   Selected menu items
///
/// Usage:
/// ```dart
///  emphasizedDisplayLarge = M3EEmphasizedTextStyle.displayLarge.copyWith(fontFamily: "YourFont");
/// ```
/// That is for non-primary obviously one will add the onSurface, Surface and
/// Brightness logic to get black and white for foreground and decorationColor.
/// For primary add the correct primaryColor from the ColorScheme in the copyWith.
///
/// With GoogleFonts package use the GoogleFontsFontName constructor that takes the
/// text style as a parameter.
///
///
/// @author Fredrick Allan Grott
class M3EEmphasizedTextStyle extends TextStyle {
  const M3EEmphasizedTextStyle({
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
  static const M3EEmphasizedTextStyle displayLarge = M3EEmphasizedTextStyle(
    fontSize: 57,
    height: 64 / 57,
    letterSpacing: -0.25,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
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
  static const M3EEmphasizedTextStyle displayMedium = M3EEmphasizedTextStyle(
    fontSize: 45,
    height: 52 / 45,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
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
  static const M3EEmphasizedTextStyle displaySmall = M3EEmphasizedTextStyle(
    fontSize: 36,
    height: 44 / 36,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
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
  static const M3EEmphasizedTextStyle headlineLarge = M3EEmphasizedTextStyle(
    fontSize: 32,
    height: 40 / 32,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
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
  static const M3EEmphasizedTextStyle headlineMedium = M3EEmphasizedTextStyle(
    fontSize: 28,
    height: 36 / 28,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
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
  static const M3EEmphasizedTextStyle headlineSmall = M3EEmphasizedTextStyle(
    fontSize: 24,
    height: 32 / 24,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
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
  static const M3EEmphasizedTextStyle titleLarge = M3EEmphasizedTextStyle(
    fontSize: 22,
    height: 28 / 22,
    letterSpacing: 0,
    fontWeight: FontWeight.w500,
    fontVariations: <FontVariation>[
      FontVariation('wght', 500),
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
  static const M3EEmphasizedTextStyle titleMedium = M3EEmphasizedTextStyle(
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.15,
    fontWeight: FontWeight.w600,
    fontVariations: <FontVariation>[
      FontVariation('wght', 600),
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
  static const M3EEmphasizedTextStyle titleSmall = M3EEmphasizedTextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w600,
    fontVariations: <FontVariation>[
      FontVariation('wght', 600),
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
  static const M3EEmphasizedTextStyle bodyLarge = M3EEmphasizedTextStyle(
    fontSize: 16,
    height: 24 / 16,
    letterSpacing: 0.5,
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

  /// Body Medium: Medium body text (14/20, 0.25)
  static const M3EEmphasizedTextStyle bodyMedium = M3EEmphasizedTextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.25,
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

  /// Body Small: Small body text (12/16, 0.4)
  static const M3EEmphasizedTextStyle bodySmall = M3EEmphasizedTextStyle(
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0.4,
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

  /// Label Large: Large label (14/20, 0.1)
  static const M3EEmphasizedTextStyle labelLarge = M3EEmphasizedTextStyle(
    fontSize: 14,
    height: 20 / 14,
    letterSpacing: 0.1,
    fontWeight: FontWeight.w600,
    fontVariations: <FontVariation>[
      FontVariation('wght', 600),
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
  static const M3EEmphasizedTextStyle labelMedium = M3EEmphasizedTextStyle(
    fontSize: 12,
    height: 16 / 12,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w600,
    fontVariations: <FontVariation>[
      FontVariation('wght', 600),
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
  static const M3EEmphasizedTextStyle labelSmall = M3EEmphasizedTextStyle(
    fontSize: 11,
    height: 16 / 11,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w600,
    fontVariations: <FontVariation>[
      FontVariation('wght', 600),
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
      return M3EEmphasizedTextStyle.displaySmall;
    } else if (screenWidth < M3BreakpointToken.large.value) {
      return M3EEmphasizedTextStyle.displayMedium;
    } else {
      return M3EEmphasizedTextStyle.displayLarge;
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
      fontFamilyFallback: fontFamilyFallback ?? M3EEmphasizedTypeScaleFonts.systemFontStack,
    );
  }

  /// Creates a monospace variant for code display.
  static TextStyle monoVariant(TextStyle baseStyle) {
    return baseStyle.copyWith(
      fontFamily: 'Roboto Mono',
      fontFamilyFallback: M3EEmphasizedTypeScaleFonts.monoFontStack,
      letterSpacing: 0,
    );
  }
}

/// Provides utility methods for working with type scale tokens.
extension M3EEmphasizedTextStyleUtils on M3EEmphasizedTextStyle {
  /// Gets the semantic category this token belongs to.
  M3EEmphasizedTypeScaleCategory get category => switch (this) {
    M3EEmphasizedTextStyle.displayLarge ||
    M3EEmphasizedTextStyle.displayMedium ||
    M3EEmphasizedTextStyle.displaySmall => M3EEmphasizedTypeScaleCategory.display,
    M3EEmphasizedTextStyle.headlineLarge ||
    M3EEmphasizedTextStyle.headlineMedium ||
    M3EEmphasizedTextStyle.headlineSmall => M3EEmphasizedTypeScaleCategory.headline,
    M3EEmphasizedTextStyle.titleLarge ||
    M3EEmphasizedTextStyle.titleMedium ||
    M3EEmphasizedTextStyle.titleSmall => M3EEmphasizedTypeScaleCategory.title,
    M3EEmphasizedTextStyle.bodyLarge ||
    M3EEmphasizedTextStyle.bodyMedium ||
    M3EEmphasizedTextStyle.bodySmall => M3EEmphasizedTypeScaleCategory.body,
    M3EEmphasizedTextStyle.labelLarge ||
    M3EEmphasizedTextStyle.labelMedium ||
    M3EEmphasizedTextStyle.labelSmall => M3EEmphasizedTypeScaleCategory.label,
    _ => M3EEmphasizedTypeScaleCategory.label, // TODO(fluttely): put default value here
  };

  /// Gets the line height in logical pixels.
  double get lineHeight => fontSize! * (height ?? 1.0);

  /// Checks if this token has a larger font size than another.
  bool isLargerThan(M3EEmphasizedTextStyle other) => fontSize! > other.fontSize!;

  /// Checks if this token has a smaller font size than another.
  bool isSmallerThan(M3EEmphasizedTextStyle other) => fontSize! < other.fontSize!;

  /// Returns the difference in font size between this and another token.
  double fontSizeDifferenceFrom(M3EEmphasizedTextStyle other) => (fontSize! - other.fontSize!).abs();

  /// Gets the next larger token in the same category, if available.
  M3EEmphasizedTextStyle? get nextLarger {
    final categoryTokens = category.tokens;
    final currentIndex = categoryTokens.indexOf(this);
    return currentIndex > 0 ? categoryTokens[currentIndex - 1] : null;
  }

  /// Gets the next smaller token in the same category, if available.
  M3EEmphasizedTextStyle? get nextSmaller {
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
      copyWith(fontFamily: family, fontFamilyFallback: fallbacks ?? M3EEmphasizedTypeScaleFonts.systemFontStack);

  /// Creates an adaptive text style that scales with user preferences.
  TextStyle adaptive(BuildContext context, {double? minFontSize, double? maxFontSize}) =>
      M3EEmphasizedTextStyle.adaptive(
        baseStyle: this,
        context: context,
        minFontSize: minFontSize,
        maxFontSize: maxFontSize,
      );

  /// Creates a text style optimized for accessibility.
  TextStyle get accessible => M3EEmphasizedTextStyle.enhancedReadability(this);

  /// Creates a high contrast version of this text style.
  TextStyle get highContrast => M3EEmphasizedTextStyle.highContrast(this);

  /// Creates a monospace variant for code display.
  TextStyle get monospace => M3EEmphasizedTextStyle.monoVariant(this);

  /// Creates a responsive text style based on screen size.
  TextStyle responsive(BuildContext context) {
    if (category != M3EEmphasizedTypeScaleCategory.display) return this;
    return M3EEmphasizedTextStyle.responsiveDisplay(context);
  }

  /// Checks if this token is suitable for long-form reading.
  bool get isReadingOptimized => switch (this) {
    M3EEmphasizedTextStyle.bodyLarge || M3EEmphasizedTextStyle.bodyMedium => true,
    _ => false,
  };

  /// Checks if this token is suitable for UI labels.
  bool get isLabelOptimized => category == M3EEmphasizedTypeScaleCategory.label;

  /// Checks if this token is suitable for headings.
  bool get isHeadingOptimized => switch (category) {
    M3EEmphasizedTypeScaleCategory.display ||
    M3EEmphasizedTypeScaleCategory.headline ||
    M3EEmphasizedTypeScaleCategory.title => true,
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
extension M3EEmphasizedTextStyleTokenComparison on M3EEmphasizedTextStyle {
  /// Returns the token with the larger font size.
  M3EEmphasizedTextStyle max(M3EEmphasizedTextStyle other) => fontSize! >= other.fontSize! ? this : other;

  /// Returns the token with the smaller font size.
  M3EEmphasizedTextStyle min(M3EEmphasizedTextStyle other) => fontSize! <= other.fontSize! ? this : other;

  /// Calculates the scale factor between this and another token.
  double scaleFactorTo(M3EEmphasizedTextStyle other) => other.fontSize! / fontSize!;

  /// Checks if two tokens have similar font sizes (within 2px).
  bool isSimilarSizeTo(M3EEmphasizedTextStyle other) => fontSizeDifferenceFrom(other) <= 2.0;

  /// Checks if this token can be used as a visual replacement for another.
  bool isVisuallyCompatibleWith(M3EEmphasizedTextStyle other) => category == other.category || isSimilarSizeTo(other);
}
