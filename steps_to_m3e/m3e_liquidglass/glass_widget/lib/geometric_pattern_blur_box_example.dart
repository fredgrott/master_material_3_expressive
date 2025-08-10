// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/abstract_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the GeometricPatternBlurBox with abstract shapes.
///
/// Shows a blur box with generated geometric patterns and shapes.
class GeometricPatternBlurBoxExample extends StatelessWidget {
  const GeometricPatternBlurBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Geometric Pattern',
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: GeometricPatternBlurBox(
            baseBlur: 8,
            shapeCount: 100,
            colors: [
              Colors.blue.withValues(alpha: 0.5),
              Colors.purple.withValues(alpha: 0.5),
              Colors.pink.withValues(alpha: 0.5),
            ],
            shapeTypes: const [
              GeometricShapeType.circle,
              GeometricShapeType.rectangle,
              GeometricShapeType.oval,
              GeometricShapeType.triangle,
            ],
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              height: 400,
              padding: const EdgeInsets.all(24),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shape_line_rounded, size: 60, color: Colors.white),
                  SizedBox(height: 16),
                  Text(
                    'Geometric Pattern',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Abstract geometric shapes with blur effects',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
