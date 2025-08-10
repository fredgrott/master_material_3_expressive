// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/themed_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the ThemedBlurBox which adapts to the app's theme.
///
/// Shows a blur box that automatically uses appropriate colors from the theme.
class ThemedBlurBoxExample extends StatelessWidget {
  const ThemedBlurBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Themed BlurBox',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ThemedBlurBox(
              blur: 8,
              borderRadius: BorderRadius.circular(20),
              padding: const EdgeInsets.all(24),
              elevation: 4,
              child: const SizedBox(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.color_lens, size: 60),
                    SizedBox(height: 16),
                    Text('Themed BlurBox', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),
                    Text('Automatically adapts to your app theme colors', textAlign: TextAlign.center),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
