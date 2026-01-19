// Copyright 2026 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: camel_case_types

import 'dart:core';
import 'dart:ui';

/// So, the idea is to spread out the modeling to
/// then make Text Themes easier to create.
///
/// OOP wise this is a variation of the flyweight pattern. The flyweight pattern
/// is we want a small functional unit that gets re-used in a bigger class unit.
/// In this case in the definition of text styles in the text theme and the primary
/// text theme.
///
/// adheres the M3E spec at:
/// https://m3.material.io/styles/typography/type-scale-tokens#0020d4d9-4f5b-4666-b3ce-c26db849bd73
///
/// Its created a specific way as we want to reduce memory in our ThemeData
/// by having this as a const instead of using a super constructor as then
/// we would have to override every field to create the custom design token.
/// Instead in this case we only have to override a changed field in the
/// class extension.
class kFontWeights {
  final FontWeight displayLarge = FontWeight.w400;

  final FontWeight displayMedium = FontWeight.w400;

  final FontWeight displaySmall = FontWeight.w400;

  final FontWeight headlineLarge = FontWeight.w400;

  final FontWeight headlineMedium = FontWeight.w400;

  final FontWeight headlineSmall = FontWeight.w400;

  final FontWeight titleLarge = FontWeight.w400;

  final FontWeight titleMedium = FontWeight.w500;

  final FontWeight titleSmall = FontWeight.w500;

  final FontWeight bodyLarge = FontWeight.w400;

  final FontWeight bodyMedium = FontWeight.w400;

  final FontWeight bodySmall = FontWeight.w400;

  final FontWeight labelLarge = FontWeight.w500;

  final FontWeight labelMedium = FontWeight.w500;

  final FontWeight labelSmall = FontWeight.w500;

  final FontWeight expressiveDisplayLarge = FontWeight.w500;

  final FontWeight expressiveDisplayMedium = FontWeight.w500;

  final FontWeight expressiveDisplaySmall = FontWeight.w500;

  final FontWeight expressiveHeadlineLarge = FontWeight.w500;

  final FontWeight expressiveHeadlineMedium = FontWeight.w500;

  final FontWeight expressiveHeadlineSmall = FontWeight.w500;

  final FontWeight expressiveTitleLarge = FontWeight.w500;

  final FontWeight expressiveTitleMedium = FontWeight.w600;

  final FontWeight expressiveTitleSmall = FontWeight.w600;

  final FontWeight expressiveBodyLarge = FontWeight.w500;

  final FontWeight expressiveBodyMedium = FontWeight.w500;

  final FontWeight expressiveBodySmall = FontWeight.w500;

  final FontWeight expressiveLabelLarge = FontWeight.w700;

  final FontWeight expressiveLabelMedium = FontWeight.w700;

  final FontWeight expressiveLabelSmall = FontWeight.w500;
}

class kFontSizes {
  final double displayLarge = 57;

  final double displayMedium = 45;

  final double displaySmall = 36;

  final double headlineLarge = 32;

  final double headlineMedium = 28;

  final double headlineSmall = 24;

  final double titleLarge = 22;

  final double titleMedium = 16;

  final double titleSmall = 14;

  final double bodyLarge = 16;

  final double bodyMedium = 14;

  final double bodySmall = 12;

  final double labelLarge = 14;

  final double labelMedium = 12;

  final double labelSmall = 11;

  final double expressiveDisplayLarge = 57;

  final double expressiveDisplayMedium = 45;

  final double expressiveDisplaySmall = 36;

  final double expressiveHeadlineLarge = 32;

  final double expressiveHeadlineMedium = 28;

  final double expressiveHeadlineSmall = 24;

  final double expressiveTitleLarge = 22;

  final double expressiveTitleMedium = 16;

  final double expressiveTitleSmall = 14;

  final double expressiveBodyLarge = 16;

  final double expressiveBodyMedium = 14;

  final double expressiveBodySmall = 12;

  final double expressiveLabelLarge = 14;

  final double expressiveLabelMedium = 12;

  final double expressiveLabelSmall = 11;
}

class kFontTracking {
  final double displayLarge = 0;

  final double displayMedium = 0;

  final double displaySmall = 0;

  final double headlineLarge = 0;

  final double headlineMedium = 0;

  final double headlineSmall = 0;

  final double titleLarge = 0;

  final double titleMedium = 0;

  final double titleSmall = 0;

  final double bodyLarge = 0;

  final double bodyMedium = 0;

  final double bodySmall = 0.1;

  final double labelLarge = 0;

  final double labelMedium = 0.1;

  final double labelSmall = 0.1;

  final double expressiveDisplayLarge = 0;

  final double expressiveDisplayMedium = 0;

  final double expressiveDisplaySmall = 0;

  final double expressiveHeadlineLarge = 0;

  final double expressiveHeadlineMedium = 0;

  final double expressiveHeadlineSmall = 0;

  final double expressiveTitleLarge = 0;

  final double expressiveTitleMedium = 0;

  final double expressiveTitleSmall = 0;

  final double expressiveBodyLarge = 0;

  final double expressiveBodyMedium = 0;

  final double expressiveBodySmall = 0;

  final double expressiveLabelLarge = 0;

  final double expressiveLabelMedium = 0.1;

  final double expressiveLabelSmall = 0.1;
}

class kLineHeights {
  final double displayLarge = 64;

  final double displayMedium = 52;

  final double displaySmall = 44;

  final double headlineLarge = 40;

  final double headlineMedium = 36;

  final double headlineSmall = 32;

  final double titleLarge = 28;

  final double titleMedium = 24;

  final double titleSmall = 20;

  final double bodyLarge = 24;

  final double bodyMedium = 20;

  final double bodySmall = 16;

  final double labelLarge = 20;

  final double labelMedium = 16;

  final double labelSmall = 16;

  final double expressiveDisplayLarge = 64;

  final double expressiveDisplayMedium = 52;

  final double expressiveDisplaySmall = 44;

  final double expressiveHeadlineLarge = 40;

  final double expressiveHeadlineMedium = 36;

  final double expressiveHeadlineSmall = 32;

  final double expressiveTitleLarge = 28;

  final double expressiveTitleMedium = 24;

  final double expressiveTitleSmall = 20;

  final double expressiveBodyLarge = 24;

  final double expressiveBodyMedium = 20;

  final double expressiveBodySmall = 16;

  final double expressiveLabelLarge = 20;

  final double expressiveLabelMedium = 16;

  final double expressiveLabelSmall = 16;
}

class kVarWght {
  static const FontVariation displayLarge = FontVariation('wght', 400);

  static const FontVariation displayMedium = FontVariation('wght', 400);

  static const FontVariation displaySmall = FontVariation('wght', 400);

  static const FontVariation headlineLarge = FontVariation('wght', 400);

  static const FontVariation headlineMedium = FontVariation('wght', 400);

  static const FontVariation headlineSmall = FontVariation('wght', 400);

  static const FontVariation titleLarge = FontVariation('wght', 400);

  static const FontVariation titleMedium = FontVariation('wght', 500);

  static const FontVariation titleSmall = FontVariation('wght', 500);

  static const FontVariation bodyLarge = FontVariation('wght', 400);

  static const FontVariation bodyMedium = FontVariation('wght', 400);

  static const FontVariation bodySmall = FontVariation('wght', 400);

  static const FontVariation labelLarge = FontVariation('wght', 500);

  static const FontVariation labelMedium = FontVariation('wght', 500);

  static const FontVariation labelSmall = FontVariation('wght', 500);

  static const FontVariation expressiveDisplayLarge = FontVariation('wght', 500);

  static const FontVariation expressiveDisplayMedium = FontVariation('wght', 500);

  static const FontVariation expressiveDisplaySmall = FontVariation('wght', 500);

  static const FontVariation expressiveHeadlineLarge = FontVariation('wght', 500);

  static const FontVariation expressiveHeadlineMedium = FontVariation('wght', 500);

  static const FontVariation expressiveHeadlineSmall = FontVariation('wght', 500);

  static const FontVariation expressiveTitleLarge = FontVariation('wght', 500);

  static const FontVariation expressiveTitleMedium = FontVariation('wght', 600);

  static const FontVariation expressiveTitleSmall = FontVariation('wght', 600);

  static const FontVariation expressiveBodyLarge = FontVariation('wght', 500);

  static const FontVariation expressiveBodyMedium = FontVariation('wght', 500);

  static const FontVariation expressiveBodySmall = FontVariation('wght', 500);

  static const FontVariation expressiveLabelLarge = FontVariation('wght', 700);

  static const FontVariation expressiveLabelMedium = FontVariation('wght', 700);

  static const FontVariation expressiveLabelSmall = FontVariation('wght', 700);
}

class kVarGRAD {
  static const FontVariation displayLarge = FontVariation('GRAD', 0);

  static const FontVariation displayMedium = FontVariation('GRAD', 0);

  static const FontVariation displaySmall = FontVariation('GRAD', 0);

  static const FontVariation headlineLarge = FontVariation('GRAD', 0);

  static const FontVariation headlineMedium = FontVariation('GRAD', 0);

  static const FontVariation headlineSmall = FontVariation('GRAD', 0);

  static const FontVariation titleLarge = FontVariation('GRAD', 0);

  static const FontVariation titleMedium = FontVariation('GRAD', 0);

  static const FontVariation titleSmall = FontVariation('GRAD', 0);

  static const FontVariation bodyLarge = FontVariation('GRAD', 0);

  static const FontVariation bodyMedium = FontVariation('GRAD', 0);

  static const FontVariation bodySmall = FontVariation('GRAD', 0);

  static const FontVariation labelLarge = FontVariation('GRAD', 0);

  static const FontVariation labelMedium = FontVariation('GRAD', 0);

  static const FontVariation labelSmall = FontVariation('GRAD', 0);

  static const FontVariation expressiveDisplayLarge = FontVariation('GRAD', 0);

  static const FontVariation expressiveDisplayMedium = FontVariation('GRAD', 0);

  static const FontVariation expressiveDisplaySmall = FontVariation('GRAD', 0);

  static const FontVariation expressiveHeadlineLarge = FontVariation('GRAD', 0);

  static const FontVariation expressiveHeadlineMedium = FontVariation('GRAD', 0);

  static const FontVariation expressiveHeadlineSmall = FontVariation('GRAD', 0);

  static const FontVariation expressiveTitleLarge = FontVariation('GRAD', 0);

  static const FontVariation expressiveTitleMedium = FontVariation('GRAD', 0);

  static const FontVariation expressiveTitleSmall = FontVariation('GRAD', 0);

  static const FontVariation expressiveBodyLarge = FontVariation('GRAD', 0);

  static const FontVariation expressiveBodyMedium = FontVariation('GRAD', 0);

  static const FontVariation expressiveBodySmall = FontVariation('GRAD', 0);

  static const FontVariation expressiveLabelLarge = FontVariation('GRAD', 0);

  static const FontVariation expressiveLabelMedium = FontVariation('GRAD', 0);

  static const FontVariation expressiveLabelSmall = FontVariation('GRAD', 0);
}

class kVarWdth {
  static const FontVariation displayLarge = FontVariation('wdth', 100);

  static const FontVariation displayMedium = FontVariation('wdth', 100);

  static const FontVariation displaySmall = FontVariation('wdth', 100);

  static const FontVariation headlineLarge = FontVariation('wdth', 100);

  static const FontVariation headlineMedium = FontVariation('wdth', 100);

  static const FontVariation headlineSmall = FontVariation('wdth', 100);

  static const FontVariation titleLarge = FontVariation('wdth', 100);

  static const FontVariation titleMedium = FontVariation('wdth', 100);

  static const FontVariation titleSmall = FontVariation('wdth', 100);

  static const FontVariation bodyLarge = FontVariation('wdth', 100);

  static const FontVariation bodyMedium = FontVariation('wdth', 100);

  static const FontVariation bodySmall = FontVariation('wdth', 100);

  static const FontVariation labelLarge = FontVariation('wdth', 100);

  static const FontVariation labelMedium = FontVariation('wdth', 100);

  static const FontVariation labelSmall = FontVariation('wdth', 100);

  static const FontVariation expressiveDisplayLarge = FontVariation('wdth', 100);

  static const FontVariation expressiveDisplayMedium = FontVariation('wdth', 100);

  static const FontVariation expressiveDisplaySmall = FontVariation('wdth', 100);

  static const FontVariation expressiveHeadlineLarge = FontVariation('wdth', 100);

  static const FontVariation expressiveHeadlineMedium = FontVariation('wdth', 100);

  static const FontVariation expressiveHeadlineSmall = FontVariation('wdth', 100);

  static const FontVariation expressiveTitleLarge = FontVariation('wdth', 100);

  static const FontVariation expressiveTitleMedium = FontVariation('wdth', 100);

  static const FontVariation expressiveTitleSmall = FontVariation('wdth', 100);

  static const FontVariation expressiveBodyLarge = FontVariation('wdth', 100);

  static const FontVariation expressiveBodyMedium = FontVariation('wdth', 100);

  static const FontVariation expressiveBodySmall = FontVariation('wdth', 100);

  static const FontVariation expressiveLabelLarge = FontVariation('wdth', 100);

  static const FontVariation expressiveLabelMedium = FontVariation('wdth', 100);

  static const FontVariation expressiveLabelSmall = FontVariation('wdth', 100);
}

class kVarROND {
  static const FontVariation displayLarge = FontVariation('ROND', 0);

  static const FontVariation displayMedium = FontVariation('ROND', 0);

  static const FontVariation displaySmall = FontVariation('ROND', 0);

  static const FontVariation headlineLarge = FontVariation('ROND', 0);

  static const FontVariation headlineMedium = FontVariation('ROND', 0);

  static const FontVariation headlineSmall = FontVariation('ROND', 0);

  static const FontVariation titleLarge = FontVariation('ROND', 0);

  static const FontVariation titleMedium = FontVariation('ROND', 0);

  static const FontVariation titleSmall = FontVariation('ROND', 0);

  static const FontVariation bodyLarge = FontVariation('ROND', 0);

  static const FontVariation bodyMedium = FontVariation('ROND', 0);

  static const FontVariation bodySmall = FontVariation('ROND', 0);

  static const FontVariation labelLarge = FontVariation('ROND', 0);

  static const FontVariation labelMedium = FontVariation('ROND', 0);

  static const FontVariation labelSmall = FontVariation('ROND', 0);
}

class kVarOPSZ {
  static const FontVariation displayLarge = FontVariation('opsz', 57);

  static const FontVariation displayMedium = FontVariation('opsz', 45);

  static const FontVariation displaySmall = FontVariation('opsz', 36);

  static const FontVariation headlineLarge = FontVariation('opsz', 32);

  static const FontVariation headlineMedium = FontVariation('opsz', 28);

  static const FontVariation headlineSmall = FontVariation('opsz', 24);

  static const FontVariation titleLarge = FontVariation('opsz', 22);

  static const FontVariation titleMedium = FontVariation('opsz', 16);

  static const FontVariation titleSmall = FontVariation('opsz', 14);

  static const FontVariation bodyLarge = FontVariation('opsz', 16);

  static const FontVariation bodyMedium = FontVariation('opsz', 14);

  static const FontVariation bodySmall = FontVariation('opsz', 12);

  static const FontVariation labelLarge = FontVariation('opsz', 14);

  static const FontVariation labelMedium = FontVariation('opsz', 12);

  static const FontVariation labelSmall = FontVariation('opsz', 11);

  static const FontVariation eexpressiveDisplayLarge = FontVariation('opsz', 57);

  static const FontVariation expressiveDisplayMedium = FontVariation('opsz', 45);

  static const FontVariation expressiveDisplaySmall = FontVariation('opsz', 36);

  static const FontVariation expressiveHeadlineLarge = FontVariation('opsz', 32);

  static const FontVariation expressiveHeadlineMedium = FontVariation('opsz', 28);

  static const FontVariation expressiveHeadlineSmall = FontVariation('opsz', 24);

  static const FontVariation expressiveTitleLarge = FontVariation('opsz', 22);

  static const FontVariation expressiveTitleMedium = FontVariation('opsz', 16);

  static const FontVariation expressiveTitleSmall = FontVariation('opsz', 14);

  static const FontVariation expressiveBodyLarge = FontVariation('opsz', 16);

  static const FontVariation expressiveBodyMedium = FontVariation('opsz', 14);

  static const FontVariation expressiveBodySmall = FontVariation('opsz', 12);

  static const FontVariation expressiveLabelLarge = FontVariation('opsz', 14);

  static const FontVariation expressiveLabelMedium = FontVariation('opsz', 12);

  static const FontVariation expressiveLabelSmall = FontVariation('opsz', 11);
}

class kVarCRSV {
  static const FontVariation displayLarge = FontVariation('CRSV', 0);

  static const FontVariation displayMedium = FontVariation('CRSV', 0);

  static const FontVariation displaySmall = FontVariation('CRSV', 0);

  static const FontVariation headlineLarge = FontVariation('CRSV', 0);

  static const FontVariation headlineMedium = FontVariation('CRSV', 0);

  static const FontVariation headlineSmall = FontVariation('CRSV', 0);

  static const FontVariation titleLarge = FontVariation('CRSV', 0);

  static const FontVariation titleMedium = FontVariation('CRSV', 0);

  static const FontVariation titleSmall = FontVariation('CRSV', 0);

  static const FontVariation bodyLarge = FontVariation('CRSV', 0);

  static const FontVariation bodyMedium = FontVariation('CRSV', 0);

  static const FontVariation bodySmall = FontVariation('CRSV', 0);

  static const FontVariation labelLarge = FontVariation('CRSV', 0);

  static const FontVariation labelMedium = FontVariation('CRSV', 0);

  static const FontVariation labelSmall = FontVariation('CRSV', 0);

  static const FontVariation expressiveDisplayLarge = FontVariation('CRSV', 0);

  static const FontVariation expressiveDisplayMedium = FontVariation('CRSV', 0);

  static const FontVariation expressiveDisplaySmall = FontVariation('CRSV', 0);

  static const FontVariation expressiveHeadlineLarge = FontVariation('CRSV', 0);

  static const FontVariation expressiveHeadlineMedium = FontVariation('CRSV', 0);

  static const FontVariation expressiveHeadlineSmall = FontVariation('CRSV', 0);

  static const FontVariation expressiveTitleLarge = FontVariation('CRSV', 0);

  static const FontVariation expressiveTitleMedium = FontVariation('CRSV', 0);

  static const FontVariation expressiveTitleSmall = FontVariation('CRSV', 0);

  static const FontVariation expressiveBodyLarge = FontVariation('CRSV', 0);

  static const FontVariation expressiveBodyMedium = FontVariation('CRSV', 0);

  static const FontVariation expressiveBodySmall = FontVariation('CRSV', 0);

  static const FontVariation expressiveLabelLarge = FontVariation('CRSV', 0);

  static const FontVariation expressiveLabelMedium = FontVariation('CRSV', 0);

  static const FontVariation expressiveLabelSmall = FontVariation('CRSV', 0);
}

class kVarSInt {
  static const FontVariation displayLarge = FontVariation('sInt', 0);

  static const FontVariation displayMedium = FontVariation('sInt', 0);

  static const FontVariation displaySmall = FontVariation('sInt', 0);

  static const FontVariation headlineLarge = FontVariation('sInt', 0);

  static const FontVariation headlineMedium = FontVariation('sInt', 0);

  static const FontVariation headlineSmall = FontVariation('sInt', 0);

  static const FontVariation titleLarge = FontVariation('sInt', 0);

  static const FontVariation titleMedium = FontVariation('sInt', 0);

  static const FontVariation titleSmall = FontVariation('sInt', 0);

  static const FontVariation bodyLarge = FontVariation('sInt', 0);

  static const FontVariation bodyMedium = FontVariation('sInt', 0);

  static const FontVariation bodySmall = FontVariation('sInt', 0);

  static const FontVariation labelLarge = FontVariation('sInt', 0);

  static const FontVariation labelMedium = FontVariation('sInt', 0);

  static const FontVariation labelSmall = FontVariation('sInt', 0);


  static const FontVariation expressiveDisplayLarge = FontVariation('sInt', 0);

  static const FontVariation expressiveDisplayMedium = FontVariation('sInt', 0);

  static const FontVariation expressiveDisplaySmall = FontVariation('sInt', 0);

  static const FontVariation expressiveHeadlineLarge = FontVariation('sInt', 0);

  static const FontVariation expressiveHeadlineMedium = FontVariation('sInt', 0);

  static const FontVariation expressiveHeadlineSmall = FontVariation('sInt', 0);

  static const FontVariation expressiveTitleLarge = FontVariation('sInt', 0);

  static const FontVariation expresiveTitleMedium = FontVariation('sInt', 0);

  static const FontVariation expressiveTitleSmall = FontVariation('sInt', 0);

  static const FontVariation expressiveBodyLarge = FontVariation('sInt', 0);

  static const FontVariation expressiveBodyMedium = FontVariation('sInt', 0);

  static const FontVariation expressiveBodySmall = FontVariation('sInt', 0);

  static const FontVariation expressiveLabelLarge = FontVariation('sInt', 0);

  static const FontVariation expressiveLabelMedium = FontVariation('sInt', 0);

  static const FontVariation expressiveLabelSmall = FontVariation('sInt', 0);
}

class kVarFILL {
  static const FontVariation displayLarge = FontVariation('FILL', 0);

  static const FontVariation displayMedium = FontVariation('FILL', 0);

  static const FontVariation displaySmall = FontVariation('FILL', 0);

  static const FontVariation headlineLarge = FontVariation('FILL', 0);

  static const FontVariation headlineMedium = FontVariation('FILL', 0);

  static const FontVariation headlineSmall = FontVariation('FILL', 0);

  static const FontVariation titleLarge = FontVariation('FILL', 0);

  static const FontVariation titleMedium = FontVariation('FILL', 0);

  static const FontVariation titleSmall = FontVariation('FILL', 0);

  static const FontVariation bodyLarge = FontVariation('FILL', 0);

  static const FontVariation bodyMedium = FontVariation('FILL', 0);

  static const FontVariation bodySmall = FontVariation('FILL', 0);

  static const FontVariation labelLarge = FontVariation('FILL', 0);

  static const FontVariation labelMedium = FontVariation('FILL', 0);

  static const FontVariation labelSmall = FontVariation('FILL', 0);

  static const FontVariation expressiveDisplayLarge = FontVariation('FILL', 0);

  static const FontVariation expressiveDisplayMedium = FontVariation('FILL', 0);

  static const FontVariation expressiveDisplaySmall = FontVariation('FILL', 0);

  static const FontVariation expressiveHeadlineLarge = FontVariation('FILL', 0);

  static const FontVariation expressiveHeadlineMedium = FontVariation('FILL', 0);

  static const FontVariation expressiveHeadlineSmall = FontVariation('FILL', 0);

  static const FontVariation expressiveTitleLarge = FontVariation('FILL', 0);

  static const FontVariation expressiveTitleMedium = FontVariation('FILL', 0);

  static const FontVariation expressiveTitleSmall = FontVariation('FILL', 0);

  static const FontVariation expressiveBodyLarge = FontVariation('FILL', 0);

  static const FontVariation expressiveBodyMedium = FontVariation('FILL', 0);

  static const FontVariation expressiveBodySmall = FontVariation('FILL', 0);

  static const FontVariation expressiveLabelLarge = FontVariation('FILL', 0);

  static const FontVariation expressiveLabelMedium = FontVariation('FILL', 0);

  static const FontVariation expressiveLabelSmall = FontVariation('FILL', 0);
}

class kVarHEXP {
  static const FontVariation displayLarge = FontVariation('HEXP', 0);

  static const FontVariation displayMedium = FontVariation('HEXP', 0);

  static const FontVariation displaySmall = FontVariation('HEXP', 0);

  static const FontVariation headlineLarge = FontVariation('HEXP', 0);

  static const FontVariation headlineMedium = FontVariation('HEXP', 0);

  static const FontVariation headlineSmall = FontVariation('HEXP', 0);

  static const FontVariation titleLarge = FontVariation('HEXP', 0);

  static const FontVariation titleMedium = FontVariation('HEXP', 0);

  static const FontVariation titleSmall = FontVariation('HEXP', 0);

  static const FontVariation bodyLarge = FontVariation('HEXP', 0);

  static const FontVariation bodyMedium = FontVariation('HEXP', 0);

  static const FontVariation bodySmall = FontVariation('HEXP', 0);

  static const FontVariation labelLarge = FontVariation('HEXP', 0);

  static const FontVariation labelMedium = FontVariation('HEXP', 0);

  static const FontVariation labelSmall = FontVariation('HEXP', 0);

  static const FontVariation expressiveDisplayLarge = FontVariation('HEXP', 0);

  static const FontVariation expressiveDisplayMedium = FontVariation('HEXP', 0);

  static const FontVariation expressiveDisplaySmall = FontVariation('HEXP', 0);

  static const FontVariation expressiveHeadlineLarge = FontVariation('HEXP', 0);

  static const FontVariation expressiveHeadlineMedium = FontVariation('HEXP', 0);

  static const FontVariation expressiveHeadlineSmall = FontVariation('HEXP', 0);

  static const FontVariation expressiveTitleLarge = FontVariation('HEXP', 0);

  static const FontVariation expressiveTitleMedium = FontVariation('HEXP', 0);

  static const FontVariation expressiveTitleSmall = FontVariation('HEXP', 0);

  static const FontVariation expressiveBodyLarge = FontVariation('HEXP', 0);

  static const FontVariation expressiveBodyMedium = FontVariation('HEXP', 0);

  static const FontVariation expressiveBodySmall = FontVariation('HEXP', 0);

  static const FontVariation expressiveLabelLarge = FontVariation('HEXP', 0);

  static const FontVariation expressiveLabelMedium = FontVariation('HEXP', 0);

  static const FontVariation expressiveLabelSmall = FontVariation('HEXP', 0);
}
