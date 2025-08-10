// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

// ignore_for_file: avoid_redundant_argument_values

// Demonstrates the KaleidoscopeBlurBox with symmetrical patterns.
import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/abstract_blurbox.dart';
import 'package:glass_widget/example_page.dart';

///
/// Shows a kaleidoscope effect using various pattern types with blur.
class KaleidoscopeBlurBoxExample extends StatefulWidget {
  const KaleidoscopeBlurBoxExample({super.key});

  @override
  State<KaleidoscopeBlurBoxExample> createState() => _KaleidoscopeBlurBoxExampleState();
}

class _KaleidoscopeBlurBoxExampleState extends State<KaleidoscopeBlurBoxExample> {
  KaleidoscopePatternType _selectedPatternType = KaleidoscopePatternType.basic;
  bool _animated = true;

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'Kaleidoscope',
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: KaleidoscopeBlurBox(
                  segments: 20,
                  blur: 5.0,
                  color: Colors.purple.withValues(alpha: 0.2),
                  animated: _animated,
                  patternType: _selectedPatternType,
                  rotationDuration: const Duration(seconds: 20),
                  borderRadius: BorderRadius.circular(20),
                  width: double.infinity,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.auto_awesome, size: 60, color: Colors.white),
                      const SizedBox(height: 16),
                      const Text(
                        'Kaleidoscope BlurBox',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Pattern type: ${_selectedPatternType.toString().split('.').last}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // Pattern type selection
          Container(
            color: Colors.black12,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pattern Type:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      for (final patternType in KaleidoscopePatternType.values)
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ChoiceChip(
                            label: Text(patternType.toString().split('.').last),
                            selected: _selectedPatternType == patternType,
                            onSelected: (selected) {
                              if (selected) {
                                setState(() {
                                  _selectedPatternType = patternType;
                                });
                              }
                            },
                          ),
                        ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),
                Row(
                  children: [
                    const Text('Animation:', style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                    Switch(
                      value: _animated,
                      onChanged: (value) {
                        setState(() {
                          _animated = value;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
