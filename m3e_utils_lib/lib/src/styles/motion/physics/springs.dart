// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// ignore_for_file: avoid_classes_with_only_static_members

///
library;

import 'package:motor/motor.dart';

/// Material 3 Expressive [SpringDescription]s.
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
/// * [MotionPhysicsCurve], a [Curve] and [Duration] based motion physics.
/// * [Web: Convert springs to curves](https://m3.material.io/styles/motion/overview/specs#e3e4f10b-6314-47b7-9051-988066081fa0)
///
/// The reason why we do not need to convert these to curves for the web platform has to do with we
/// can use curves with legacy Flutter widgets and Motor widgets to use the new physics enabled
/// springs in Flutter apps.
///
/// @author Fredrick Allan Grott
abstract final class MotionPhysicsSpring {
  /// Standard spatial movement with a fast duration.
  static MaterialSpringMotion standardSpatialFast = const MaterialSpringMotion.standardSpatialFast();

  /// Standard spatial movement with a fast default.
  static MaterialSpringMotion standardSpatialDefault = const MaterialSpringMotion.standardSpatialDefault();

  /// Standard spatial movement with a slow duration.
  static MaterialSpringMotion standardSpatialSlow = const MaterialSpringMotion.standardSpatialSlow();

  /// Expressive spatial movement with a fast duration.
  static MaterialSpringMotion expressiveSpatialFast = const MaterialSpringMotion.expressiveSpatialFast();

  /// Expressive spatial movement with a default duration.
  static MaterialSpringMotion expressiveSpatialDefault = const MaterialSpringMotion.expressiveSpatialDefault();

  /// Expressive spatial movement with a slow duration.
  static MaterialSpringMotion expressiveSpatialSlow = const MaterialSpringMotion.expressiveSpatialSlow();

  /// Effects movement with a fast duration.
  static MaterialSpringMotion standardEffectsFast = const MaterialSpringMotion.standardEffectsFast();

  /// Effects movement with a default duration.
  static MaterialSpringMotion standardEffectsDefault = const MaterialSpringMotion.standardEffectsDefault();

  /// Effects movement with a slow duration.
  static MaterialSpringMotion standardEffectsSlow = const MaterialSpringMotion.standardEffectsSlow();

  static MaterialSpringMotion expressiveEffectsFast = const MaterialSpringMotion.expressiveEffectsFast();

  static MaterialSpringMotion expressiveEffectsDefault = const MaterialSpringMotion.expressiveEffectsDefault();

  static MaterialSpringMotion expressiveEffectsSlow = const MaterialSpringMotion.expressiveEffectsSlow();
}
