// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/specialized_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the FollowingBlurBox that tracks user input.
///
/// Shows a blur effect that follows the user's finger or cursor.
class FollowingBlurBoxExample extends StatelessWidget {
  const FollowingBlurBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Following BlurBox',
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: FollowingBlurBox(
            radius: 60,
            blurIntensity: 12,
            followSpeed: 0.5,
            color: Colors.pink.withValues(alpha: 0.2),
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.touch_app, size: 60),
                  SizedBox(height: 16),
                  Text('Following BlurBox', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Move your finger or cursor\nover this container', textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
