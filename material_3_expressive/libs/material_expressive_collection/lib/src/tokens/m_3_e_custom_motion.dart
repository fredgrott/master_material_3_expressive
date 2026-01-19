// Copyright 2026 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from m3e_design package
// Copyright (c) 2025 Emily Moonstone
// MIT Licnese



import 'package:flutter/material.dart';
import 'package:motor/motor.dart';

/// Rather than what m3e_design is attempting, using the motor
/// package which fully implements the new physical way.
/// Since the motor package has classes to work with the legacy
/// Flutter SDK linear and curve using the new M3E physical way;
/// its better to provide all the MaterialSpringMotion tokens that
/// directly call the Motor classes.
///
/// Then to fully make use of the new physical M3E motion one would use
/// the specific Animation Controllers, builders, and converters in the
/// Motor package.
///
/// So this just a simple flyweight OOP pattern with static fields.
///
/// To use with Flutter SDK Widgets we convert to a curve:
/// ```dart
/// AnimatedContainer(
///   duration: const Duration(milliseconds: 500),
///   curve: MotionCurve(spring: MaterialSpringMotion.standardSpatialDefault, velocity: .3),
///   height: size,
///   width: size,
///   color: Colors.blue,
/// ),
/// ```
///
/// @author Fredrick Allan Grott
@immutable
class M3EMotion {

  //Spatial Motion meant for animation position, size, and layout changes
  final MaterialSpringMotion standardSpatialDefault;
  final MaterialSpringMotion standardSpatialFast;
  final MaterialSpringMotion standardSpatialSlow;
  final MaterialSpringMotion expressiveSpatialFast;
  final MaterialSpringMotion expressiveSpatialDefault;
  final MaterialSpringMotion expressiveSpatialSlow;

  // Effects Motion for animating visual properties like opacity and color
  final MaterialSpringMotion standardEffectsFast;
  final MaterialSpringMotion standardEffectsDefault;
  final MaterialSpringMotion standardEffectsSlow;
  final MaterialSpringMotion expressiveEffectsFast;
  final MaterialSpringMotion expressiveEffectsDefault;
  final MaterialSpringMotion expressiveEffectsSlow;

  const M3EMotion({
    required this.standardSpatialDefault,
    required this.standardSpatialFast,
    required this.standardSpatialSlow,
    required this.expressiveSpatialFast,
    required this.expressiveSpatialDefault,
    required this.expressiveSpatialSlow,
    required this.standardEffectsFast,
    required this.standardEffectsDefault,
    required this.standardEffectsSlow,
    required this.expressiveEffectsFast,
    required this.expressiveEffectsDefault,
    required this.expressiveEffectsSlow,
  });

  const M3EMotion.expressive()
       : standardSpatialDefault = const MaterialSpringMotion.standardSpatialDefault(),
         standardSpatialFast = const MaterialSpringMotion.standardSpatialFast(),
         standardSpatialSlow = const MaterialSpringMotion.standardSpatialSlow(),
         expressiveSpatialFast = const MaterialSpringMotion.expressiveSpatialFast(),
         expressiveSpatialDefault = const MaterialSpringMotion.expressiveSpatialDefault(),
         expressiveSpatialSlow = const MaterialSpringMotion.expressiveSpatialSlow(),
         standardEffectsFast = const MaterialSpringMotion.standardEffectsFast(),
         standardEffectsDefault = const MaterialSpringMotion.standardEffectsDefault(),
         standardEffectsSlow = const MaterialSpringMotion.standardEffectsSlow(),
         expressiveEffectsFast = const MaterialSpringMotion.expressiveEffectsFast(),
         expressiveEffectsDefault = const MaterialSpringMotion.expressiveEffectsDefault(),
         expressiveEffectsSlow = const MaterialSpringMotion.expressiveEffectsSlow();

  static M3EMotion lerp(M3EMotion a, M3EMotion b, double t) => a;






}
