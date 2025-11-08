// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the Material_3_Expressive    package
// MIT License by Emily Moonstone 2025

import 'package:flutter/animation.dart';
import 'package:flutter/foundation.dart';
import 'package:motor/motor.dart';

/// We are in transition as far as Material 3 Expressive Motion
/// where due to the legacy widgets in the current Flutter SDK and
/// brand new Widgets and Controllers in the Motor package; one should
/// provide both the legacy curves and the new Motor defined MaterialSpringMotion
/// defined SpringMotion constructs.
///
/// As then they will be provided via a ThemeData extension so that
/// we can reach theme via Theme.of(context) methods.
///
/// Note, we only use legacy curves in flutter web content apps
/// where we are making use of html tags and the js lib GSAP.
///
/// Material 3 Expressive [SpringDescription]s converted to pairs of a [Curve]
/// and [Duration].
///
/// Expressive motion scheme has 3 preset motion schemes with 3 speeds each.
///
/// Spatial and effect springs come in three speeds: default, fast,
/// and slow. Most motion should use the default speed, while smaller elements
/// may use fast and larger elements may use slow.
///
/// Variants are:
///
/// * [Expressive spatial](https://m3.material.io/styles/motion/overview/how-it-works#325277b0-f2fc-4be9-aa87-31cea6d1777d)
/// should be used for most situations, particularly hero moments and key interactions.
/// * [Standard spatial](https://m3.material.io/styles/motion/overview/how-it-works#3990a20e-9cd2-4b8d-89b0-31cbc6ce346c)
/// should be used for utilitarian products.
/// * [Effects](https://m3.material.io/styles/motion/overview/how-it-works#a7deb339-30ae-4559-9140-d7b7e29e68c6)
/// should be used to animate properties such as color and opacity animations, where there shouldn’t be any overshoot.
///
/// ![](https://firebasestorage.googleapis.com/v0/b/design-spec/o/projects%2Fgoogle-material-3%2Fimages%2Fm8or28vc-5.png?alt=media&token=12806c6a-d624-4706-87bf-91cc61506aa1)
///
/// See also:
///
/// * [MotionPhysicsSpring], a [SpringDescription] based motion physics.
/// * [Web: Convert springs to curves](https://m3.material.io/styles/motion/overview/specs#e3e4f10b-6314-47b7-9051-988066081fa0)
///
///
/// 
@immutable
class M3EMotion {
  final Motion curveStandardFast;
  final Motion curveStandardDefault;
  final Motion curveStandardSlow;
  final Motion curveExpressiveFast;
  final Motion curveExpressiveDefault;
  final Motion curveExpressiveSlow;
  final Motion curveEffectsFast;
  final Motion curveEffectsDefault;
  final Motion curveEffectsSlow;

  final MaterialSpringMotion standardSpatialFast;
  final MaterialSpringMotion standardSpatialDefault;
  final MaterialSpringMotion standardSpatialSlow;
  final MaterialSpringMotion expressiveSpatialFast;
  final MaterialSpringMotion expressiveSpatialDefault;
  final MaterialSpringMotion expressiveSpatialSlow;
  final MaterialSpringMotion standardEffectsFast;
  final MaterialSpringMotion standardEffectsDefault;
  final MaterialSpringMotion standardEffectsSlow;
  final MaterialSpringMotion expressiveEffectsFast;
  final MaterialSpringMotion expressiveEffectsDefault;
  final MaterialSpringMotion expressiveEffectsSlow;

  const M3EMotion({
    required this.curveStandardFast,
    required this.curveStandardDefault,
    required this.curveStandardSlow,
    required this.curveExpressiveFast,
    required this.curveExpressiveDefault,
    required this.curveExpressiveSlow,
    required this.curveEffectsFast,
    required this.curveEffectsDefault,
    required this.curveEffectsSlow,
    required this.standardSpatialFast,
    required this.standardSpatialDefault,
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

  /// Currently in the Flutter SDK we need both legacy curve and the new
  /// M3E springs so this M3EMotion.legacyNExpressive constructor gives
  /// everything initialized via a colon list.
  const M3EMotion.legacyNExpressive()
    : curveStandardFast = const Motion.curved(Duration(milliseconds: 350), Cubic(0.27, 1.06, 0.18, 1)),
      curveStandardDefault = const Motion.curved(Duration(milliseconds: 300), Cubic(0.27, 1.06, 0.18, 1)),
      curveStandardSlow = const Motion.curved(Duration(milliseconds: 750), Cubic(0.27, 1.06, 0.18, 1)),
      curveExpressiveFast = const Motion.curved(Duration(milliseconds: 350), Cubic(0.42, 1.67, 0.21, 0.9)),
      curveExpressiveDefault = const Motion.curved(Duration(milliseconds: 500), Cubic(0.39, 1.21, 0.22, 1)),
      curveExpressiveSlow = const Motion.curved(Duration(milliseconds: 650), Cubic(0.39, 1.29, 0.35, 0.98)),
      curveEffectsFast = const Motion.curved(Duration(milliseconds: 150), Cubic(0.31, 0.94, 0.34, 1)),
      curveEffectsDefault = const Motion.curved(Duration(milliseconds: 200), Cubic(0.34, 0.80, 0.34, 1)),
      curveEffectsSlow = const Motion.curved(Duration(milliseconds: 300), Cubic(0.34, 0.88, 0.34, 1)),
      standardSpatialFast = const MaterialSpringMotion.standardSpatialFast(),
      standardSpatialDefault = const MaterialSpringMotion.standardSpatialDefault(),
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

  /// lerp function required by ThemeDataExtension helpers to
  /// lerp between two themes by lerping between the individual
  /// theme components.
  static M3EMotion lerp(M3EMotion a, M3EMotion b, double t) => a;
}
