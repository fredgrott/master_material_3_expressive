// Copyright 2026 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from m3e_design package
// Copyright (c) 2025 Emily Moonstone
// MIT Licnese



// ignore_for_file: prefer_constructors_over_static_methods

import 'package:meta/meta.dart';

@immutable
class M3ECustomSpacing {
  final double xs; // 4
  final double sm; // 8
  final double md; // 12
  final double lg; // 16
  final double xl; // 24
  final double xxl; // 32

  const M3ECustomSpacing({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
    required this.xxl,
  });

  const M3ECustomSpacing.regular() : xs = 4, sm = 8, md = 12, lg = 16, xl = 24, xxl = 32;

  static M3ECustomSpacing lerp(M3ECustomSpacing a, M3ECustomSpacing b, double t) => M3ECustomSpacing(
    xs: a.xs + (b.xs - a.xs) * t,
    sm: a.sm + (b.sm - a.sm) * t,
    md: a.md + (b.md - a.md) * t,
    lg: a.lg + (b.lg - a.lg) * t,
    xl: a.xl + (b.xl - a.xl) * t,
    xxl: a.xxl + (b.xxl - a.xxl) * t,
  );
}
