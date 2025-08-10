// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/core/blur_box.dart';
import 'package:glass_widget/vector_background.dart';

/// A widget that provides a common layout for example pages.
///
/// Creates a scaffold with an app bar and a stack containing a vector
/// background and the provided child widget.
/// The app bar has a blurry background effect.
class ExamplePage extends StatelessWidget {
  final String title;
  final Widget child;

  const ExamplePage({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(title),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        flexibleSpace: BlurBox(
          height: 210,
          blur: 8,
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
          borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
          child: const SizedBox.shrink(),
        ),
      ),
      body: Stack(
        children: [
          // Vector Background
          const VectorBackground(),

          // Content
          Padding(padding: const EdgeInsets.only(top: 70.0), child: child),
        ],
      ),
    );
  }
}
