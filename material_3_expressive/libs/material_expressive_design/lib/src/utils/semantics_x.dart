// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from the Material_3_Expressive    package
// MIT License by Emily Moonstone 2025

import 'package:flutter/material.dart';

extension SemanticsX on Widget {
  Widget withLabel(String label) => Semantics(label: label, child: this);
}
