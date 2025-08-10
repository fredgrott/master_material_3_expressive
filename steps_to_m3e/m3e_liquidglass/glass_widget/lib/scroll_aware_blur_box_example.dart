// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/variants/dynamic_blurbox.dart';
import 'package:glass_widget/example_page.dart';

/// Demonstrates the ScrollAwareBlurBox that responds to scroll position.
///
/// Shows a header that becomes more blurred as the user scrolls down.
class ScrollAwareBlurBoxExample extends StatefulWidget {
  const ScrollAwareBlurBoxExample({super.key});

  @override
  State<ScrollAwareBlurBoxExample> createState() => _ScrollAwareBlurBoxExampleState();
}

class _ScrollAwareBlurBoxExampleState extends State<ScrollAwareBlurBoxExample> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ExamplePage(
      title: 'ScrollAware BlurBox',
      child: Stack(
        children: [
          ListView.builder(
            physics: const AlwaysScrollableScrollPhysics().applyTo(const BouncingScrollPhysics()),
            controller: _scrollController,
            padding: const EdgeInsets.only(top: 150),
            itemCount: 50,
            itemBuilder: (context, index) {
              return ListTile(title: Text('Item $index'), subtitle: const Text('Scroll to change header blur'));
            },
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ScrollAwareBlurBox(
              scrollController: _scrollController,
              minBlur: 0,
              maxBlur: 15,
              scrollThreshold: 300,
              color: Colors.white.withValues(alpha: 0.3),
              child: const SafeArea(
                bottom: false,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Row(
                    children: [
                      Icon(Icons.roller_shades_closed_rounded),
                      SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('ScrollAware BlurBox', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                            Text('Scroll down to increase blur effect'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
