// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/patterned_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the PatternedBlurBox using a PNG pattern.
///
/// Shows how to use a PNG image as a pattern overlay with blur effects.
class PngPatternedBlurBoxExample extends StatelessWidget {
  const PngPatternedBlurBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'PNG Pattern BlurBox',
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: PatternedBlurBox(
            height: 500,
            blur: 8.0,
            color: Colors.white.withValues(alpha: 0.2),
            patternAsset: 'assets/images/vc_pattern.png',
            patternOpacity: 0.9,
            patternScale: 0.5,
            patternColor: Theme.of(context).colorScheme.primary,
            patternBlendMode: BlendMode.srcIn,
            borderRadius: BorderRadius.circular(20),
            padding: const EdgeInsets.all(24),
            child: SizedBox(
              width: double.infinity,
              height: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.pattern, size: 60),
                  const SizedBox(height: 16),
                  const Text('PNG Pattern BlurBox', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 12),
                  Text(
                    'Using PNG pattern with opacity: 0.2, scale: 0.5',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey.shade800),
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
