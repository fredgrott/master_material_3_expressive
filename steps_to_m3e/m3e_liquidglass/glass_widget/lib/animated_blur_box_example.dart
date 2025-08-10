// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/animated_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the AnimatedBlurBox with controllable blur transitions.
///
/// Allows toggling between blurred and clear states with animated transitions.
class AnimatedBlurBoxExample extends StatefulWidget {
  const AnimatedBlurBoxExample({super.key});

  @override
  State<AnimatedBlurBoxExample> createState() => _AnimatedBlurBoxExampleState();
}

class _AnimatedBlurBoxExampleState extends State<AnimatedBlurBoxExample> {
  bool _isBlurred = false;

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Animated BlurBox',
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedBlurBox(
              blur: _isBlurred ? 20.0 : 0.0,
              begin: _isBlurred ? 0.0 : 20.0,
              duration: const Duration(milliseconds: 800),
              curve: Curves.easeInOutCubic,
              borderRadius: BorderRadius.circular(20),
              color: Colors.white.withValues(alpha: 0.2),
              padding: const EdgeInsets.all(24),
              child: SizedBox(
                width: 300,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Icon(Icons.animation, size: 60),
                    const SizedBox(height: 16),
                    const Text('Animated BlurBox', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Text(
                      _isBlurred ? 'Blurred (20.0)' : 'Clear (0.0)',
                      textAlign: TextAlign.center,
                      style: const TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  _isBlurred = !_isBlurred;
                });
              },
              icon: Icon(_isBlurred ? Icons.visibility : Icons.visibility_off),
              label: Text(_isBlurred ? 'Clear' : 'Blur'),
              style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
