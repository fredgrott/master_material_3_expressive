// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

// List of example widgets to display in the grid
import 'package:flutter/material.dart';
import 'package:glass_widget/animated_blur_box_example.dart';
import 'package:glass_widget/basic_blur_box_example.dart';
import 'package:glass_widget/directional_blur_box_example.dart';
import 'package:glass_widget/example_widget.dart';
import 'package:glass_widget/extension_metods_example.dart';
import 'package:glass_widget/following_blur_box_example.dart';
import 'package:glass_widget/geometric_pattern_blur_box_example.dart';
import 'package:glass_widget/kaleidoscope_blur_box_example.dart';
import 'package:glass_widget/organic_pattern_blur_box_example.dart';
import 'package:glass_widget/png_pattern_blur_box_example.dart';
import 'package:glass_widget/preset_blur_box_example.dart';
import 'package:glass_widget/radial_blur_box_exampple.dart';
import 'package:glass_widget/scroll_aware_blur_box_example.dart';
import 'package:glass_widget/themed_blur_box_example.dart';

final List<ExampleWidget> exampleWidgets = [
  ExampleWidget(title: 'Basic BlurBox', icon: Icons.blur_on, builder: () => const BasicBlurBoxExample()),
  ExampleWidget(title: 'Animated BlurBox', icon: Icons.animation, builder: () => const AnimatedBlurBoxExample()),
  ExampleWidget(title: 'Preset BlurBox', icon: Icons.style, builder: () => const PresetBlurBoxExample()),
  ExampleWidget(title: 'Themed BlurBox', icon: Icons.color_lens, builder: () => const ThemedBlurBoxExample()),
  ExampleWidget(title: 'Directional BlurBox', icon: Icons.gesture, builder: () => const DirectionalBlurBoxExample()),
  ExampleWidget(title: 'Radial BlurBox', icon: Icons.radio_button_checked, builder: () => const RadialBlurBoxExample()),
  ExampleWidget(title: 'Following BlurBox', icon: Icons.touch_app, builder: () => const FollowingBlurBoxExample()),
  ExampleWidget(
    title: 'Scroll Aware BlurBox',
    icon: Icons.roller_shades_closed_rounded,
    builder: () => const ScrollAwareBlurBoxExample(),
  ),
  ExampleWidget(title: 'PNG Pattern', icon: Icons.pattern, builder: () => const PngPatternedBlurBoxExample()),
  ExampleWidget(
    title: 'Geometric Pattern',
    icon: Icons.shape_line_rounded,
    builder: () => const GeometricPatternBlurBoxExample(),
  ),
  ExampleWidget(
    title: 'Organic Pattern',
    icon: Icons.bubble_chart,
    builder: () => const OrganicPatternBlurBoxExample(),
  ),
  ExampleWidget(title: 'Kaleidoscope', icon: Icons.auto_awesome, builder: () => const KaleidoscopeBlurBoxExample()),
  ExampleWidget(title: 'Extension Methods', icon: Icons.extension, builder: () => const ExtensionMethodsExample()),
];
