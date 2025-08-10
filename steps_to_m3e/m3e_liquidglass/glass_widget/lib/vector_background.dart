// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/vector_background_painter.dart';

/// A decorative background widget that renders vector graphics.
///
/// Creates a full-size background with gradient colors and vector shapes.
/// Used to add visual interest to example pages.
class VectorBackground extends StatelessWidget {
  const VectorBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(child: CustomPaint(painter: VectorBackgroundPainter(context)));
  }
}
