// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/specialized_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the RadialBlurBox with a focal point that can be changed.
///
/// Shows blur that radiates from a focal point that can be controlled via touch.
class RadialBlurBoxExample extends StatefulWidget {
  const RadialBlurBoxExample({super.key});

  @override
  State<RadialBlurBoxExample> createState() => _RadialBlurBoxExampleState();
}

class _RadialBlurBoxExampleState extends State<RadialBlurBoxExample> {
  Alignment _focalPoint = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Radial BlurBox',
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: GestureDetector(
              onPanUpdate: (details) {
                // Convert the touch position to an Alignment
                final RenderBox box = context.findRenderObject()! as RenderBox;
                final Offset localPosition = box.globalToLocal(details.globalPosition);
                final double x = 2 * (localPosition.dx / box.size.width) - 1;
                final double y = 2 * (localPosition.dy / box.size.height) - 1;

                setState(() {
                  _focalPoint = Alignment(x, y);
                });
              },
              child: Center(
                child: RadialBlurBox(
                  radius: 150.0,
                  falloff: 2.0,
                  quality: 8,
                  maxBlur: 15,
                  focalPoint: _focalPoint,

                  color: Colors.purple.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(20),
                  padding: const EdgeInsets.all(24),
                  child: SizedBox(
                    width: 300,
                    height: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.radio_button_checked, size: 60),
                        const SizedBox(height: 16),
                        const Text('Radial BlurBox', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        const Text('Tap or drag anywhere to move focal point', textAlign: TextAlign.center),
                        const SizedBox(height: 16),
                        Text(
                          'Focal point: (${_focalPoint.x.toStringAsFixed(2)}, ${_focalPoint.y.toStringAsFixed(2)})',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
