// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/abstract_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the OrganicPatternBlurBox with flowing patterns.
///
/// Shows natural, organic-looking animated blur patterns.
class OrganicPatternBlurBoxExample extends StatelessWidget {
  const OrganicPatternBlurBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Organic Pattern',
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: OrganicPatternBlurBox(
            blur: 10,
            backgrundBlur: 50,
            color: Colors.teal.withValues(alpha: 0.4),
            complexity: 8,
            fluidity: 0.8,
            animationDuration: const Duration(seconds: 15),
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: double.infinity,
              height: 400,
              padding: const EdgeInsets.all(24),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bubble_chart, size: 60, color: Colors.white),
                  SizedBox(height: 16),
                  Text(
                    'Organic Pattern',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Flowing, natural blur patterns that animate over time',
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
