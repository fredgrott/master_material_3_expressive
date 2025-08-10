// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/preset_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the PresetBlurBox with various predefined blur styles.
///
/// Displays all available BlurPreset options in a scrollable list.
class PresetBlurBoxExample extends StatelessWidget {
  const PresetBlurBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Preset BlurBox',
      child: Center(
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics().applyTo(const BouncingScrollPhysics()),
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              for (final preset in BlurPreset.values)
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: PresetBlurBox(
                    preset: preset,
                    borderRadius: BorderRadius.circular(16),
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        const Icon(Icons.style, size: 36),
                        const SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                preset.toString().split('.').last,
                                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'A preset with predefined blur and style settings',
                                style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
