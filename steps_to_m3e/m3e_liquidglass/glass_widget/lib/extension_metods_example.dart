// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/core/extensions.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the extension methods available for adding blur effects.
///
/// Shows how to use the .blurry() and .animatedBlurry() extensions on widgets.
class ExtensionMethodsExample extends StatefulWidget {
  const ExtensionMethodsExample({super.key});

  @override
  State<ExtensionMethodsExample> createState() => _ExtensionMethodsExampleState();
}

class _ExtensionMethodsExampleState extends State<ExtensionMethodsExample> {
  bool _isBlurred = false;

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Extension Methods',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Simple blurry extension
            Container(
              width: 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.withValues(alpha: 0.1), Colors.purple.withValues(alpha: 0.1)],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Icon(Icons.extension, size: 40, color: Colors.white),
                  SizedBox(height: 8),
                  Text(
                    'Container with gradient',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ).blurry(blur: _isBlurred ? 10.0 : 0.0, borderRadius: BorderRadius.circular(16), padding: EdgeInsets.zero),

            const SizedBox(height: 24),

            // Animated blurry extension
            Container(
              width: 300,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange.withValues(alpha: 0.1), Colors.red.withValues(alpha: 0.1)],
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                children: [
                  Icon(Icons.animation, size: 40, color: Colors.white),
                  SizedBox(height: 8),
                  Text(
                    'With animated blur',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ).animatedBlurry(
              blur: _isBlurred ? 10.0 : 0.0,
              beginBlur: _isBlurred ? 0.0 : 10.0,
              duration: const Duration(milliseconds: 500),
              borderRadius: BorderRadius.circular(16),
              padding: EdgeInsets.zero,
            ),

            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _isBlurred = !_isBlurred;
                });
              },
              icon: Icon(_isBlurred ? Icons.visibility : Icons.visibility_off),
              label: Text(_isBlurred ? 'Clear' : 'Blur'),
            ),
          ],
        ),
      ),
    );
  }
}
