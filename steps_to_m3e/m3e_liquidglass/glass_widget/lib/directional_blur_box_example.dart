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

/// Demonstrates the DirectionalBlurBox with adjustable blur direction.
///
/// Allows changing the angle of the blur effect using a slider.
class DirectionalBlurBoxExample extends StatefulWidget {
  const DirectionalBlurBoxExample({super.key});

  @override
  State<DirectionalBlurBoxExample> createState() => _DirectionalBlurBoxExampleState();
}

class _DirectionalBlurBoxExampleState extends State<DirectionalBlurBoxExample> {
  double _angle = 45.0;

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Directional BlurBox',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DirectionalBlurBox(
              blur: 12,
              angle: _angle,
              color: Colors.blue.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(20),
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.gesture, size: 60),
                    const SizedBox(height: 16),
                    const Text('Directional BlurBox', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Text('Blur angle: ${_angle.toStringAsFixed(0)}°', textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                children: [
                  const Text('Adjust angle:'),
                  Slider(
                    value: _angle,
                    min: 0,
                    max: 360,
                    divisions: 72,
                    label: '${_angle.round()}°',
                    onChanged: (value) {
                      setState(() {
                        _angle = value;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
