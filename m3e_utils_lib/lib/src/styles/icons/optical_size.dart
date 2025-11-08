// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

///
library;

/// Optical sizes range from 20dp to 48dp.
///
/// For the image to look the same at different sizes, the stroke weight
/// (thickness) changes as the icon size scales.
/// Optical size offers a way to automatically adjust the stroke weight
/// when you increase or decrease the symbol size.
///
/// Traditionally, icons are resized from a 24dp source vector,
/// resulting in a large scaled icon that’s too heavy compared to the original.
/// With the optical size axis, you can maintain the stroke weight
/// (thickness) as the icon size grows.
abstract final class IconOpticalSize {
  /// The smallest optical size at 20px.
  static const double size20 = 20;

  /// The default optical size at 24px.
  static const double size24 = 24;

  /// The large optical size at 40px.
  static const double size40 = 40;

  /// The largest optical size at 48px.
  static const double size48 = 48;
}
