// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'package:flutter/material.dart';

/// Model class for example widgets displayed in the home grid.
///
/// Contains the title, icon, and builder function for each example.
class ExampleWidget {
  final String title;
  final IconData icon;
  final Widget Function() builder;

  const ExampleWidget({required this.title, required this.icon, required this.builder});
}
