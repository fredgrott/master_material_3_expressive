// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the Material_3_Expressive    package
// MIT License by Emily Moonstone 2025

// ignore_for_file: prefer_constructors_over_static_methods

import 'package:flutter/material.dart';

/// Material Expressive spacing for layouts such as
/// the Canonical layouts.
///
///
@immutable
class M3ESpacing {
  final double xs; // 4
  final double sm; // 8
  final double md; // 12
  final double lg; // 16
  final double xl; // 24
  final double xxl; // 32

  const M3ESpacing({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
  });

  const M3ESpacing.regular()
      : xs = 4,
        sm = 8,
        md = 12,
        lg = 16,
        xl = 24,
        xxl = 32;

  static M3ESpacing lerp(M3ESpacing a, M3ESpacing b, double t) => M3ESpacing(
        xs: a.xs + (b.xs - a.xs) * t,
        sm: a.sm + (b.sm - a.sm) * t,
        md: a.md + (b.md - a.md) * t,
        lg: a.lg + (b.lg - a.lg) * t,
        xl: a.xl + (b.xl - a.xl) * t,
        xxl: a.xxl + (b.xxl - a.xxl) * t,
      );
}
