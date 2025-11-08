// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the Material_3_Expressive    package
// MIT License by Emily Moonstone 2025

import 'package:flutter/material.dart';
import 'package:material_expressive_design/src/theme/m3e_theme.dart';


/// So to access the ThemeExtension stuff one uses
/// the m3e prefix. Stuff accessible:
///    m3e.colors
///    m3e.type
///    m3e.motion
///    m3e.shapes
extension BuildContextM3EX on BuildContext {
  M3ETheme get m3e =>
      Theme.of(this).extension<M3ETheme>() ?? M3ETheme.defaults(Theme.of(this).colorScheme);
}
