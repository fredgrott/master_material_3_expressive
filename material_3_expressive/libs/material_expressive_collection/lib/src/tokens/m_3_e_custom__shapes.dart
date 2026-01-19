// Copyright 2026 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from m3e_design package
// Copyright (c) 2025 Emily Moonstone
// MIT Licnese


// ignore_for_file: prefer_constructors_over_static_methods

import 'package:flutter/material.dart';

enum M3EShapeVariant { round, square }

@immutable
class M3EShapeSet {
  final BorderRadius xs;
  final BorderRadius sm;
  final BorderRadius md;
  final BorderRadius lg;
  final BorderRadius xl;
  const M3EShapeSet({required this.xs, required this.sm, required this.md, required this.lg, required this.xl});
}

@immutable
class M3ECustomShapes {
  final M3EShapeSet round;
  final M3EShapeSet square;

  const M3ECustomShapes({required this.round, required this.square});

  factory M3ECustomShapes.expressive() => const M3ECustomShapes(
        round: M3EShapeSet(
          xs: BorderRadius.all(Radius.circular(999)),
          sm: BorderRadius.all(Radius.circular(20)),
          md: BorderRadius.all(Radius.circular(28)),
          lg: BorderRadius.all(Radius.circular(44)),
          xl: BorderRadius.all(Radius.circular(64)),
        ),
        square: M3EShapeSet(
          xs: BorderRadius.all(Radius.circular(6)),
          sm: BorderRadius.all(Radius.circular(8)),
          md: BorderRadius.all(Radius.circular(12)),
          lg: BorderRadius.all(Radius.circular(16)),
          xl: BorderRadius.all(Radius.circular(20)),
        ),
      );

  static M3ECustomShapes lerp(M3ECustomShapes a, M3ECustomShapes b, double t) => M3ECustomShapes(
    round: _lerpSet(a.round, b.round, t),
    square: _lerpSet(a.square, b.square, t),
  );

  static M3EShapeSet _lerpSet(M3EShapeSet a, M3EShapeSet b, double t) => M3EShapeSet(
    xs: BorderRadius.lerp(a.xs, b.xs, t)!,
    sm: BorderRadius.lerp(a.sm, b.sm, t)!,
    md: BorderRadius.lerp(a.md, b.md, t)!,
    lg: BorderRadius.lerp(a.lg, b.lg, t)!,
    xl: BorderRadius.lerp(a.xl, b.xl, t)!,
  );
}
