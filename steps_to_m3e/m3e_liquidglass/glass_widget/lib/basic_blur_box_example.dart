// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/core/blur_box.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the basic BlurBox widget with standard properties.
///
/// Shows a simple frosted glass effect card with custom styling.
class BasicBlurBoxExample extends StatelessWidget {
  const BasicBlurBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Basic BlurBox',
      child: Center(
        child: BlurBox(
          blur: 10,
          color: Colors.white.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(20),
          padding: const EdgeInsets.all(24),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.2), blurRadius: 10, spreadRadius: 1)],
          child: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.blur_on, size: 60),
                const SizedBox(height: 16),
                const Text('Basic BlurBox', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                Text(
                  'A simple frosted glass effect with blur: 10, color: white(0.2)',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black.withValues(alpha: 0.7)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
