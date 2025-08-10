// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

import 'dart:math' as math;

import 'package:flutter/material.dart';

/// Custom painter that renders a vector-based decorative background.
///
/// Creates a gradient background with various vector elements:
/// - Wave patterns at the bottom
/// - Floating geometric shapes
/// - Glowing dots for a cosmic effect
class VectorBackgroundPainter extends CustomPainter {
  final BuildContext context;

  VectorBackgroundPainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    // Create a theme-aware gradient background
    final Paint backgroundPaint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: isDarkMode
            ? [
                const Color(0xFF0F2027), // Dark teal
                const Color(0xFF203A43), // Medium teal
                const Color(0xFF2C5364), // Light teal
              ]
            : [
                const Color(0xFFF0F8FF), // Alice blue
                const Color(0xFFE6F2FF), // Light sky blue
                const Color(0xFFD4E6FF), // Very light blue
              ],
      ).createShader(rect);

    canvas.drawRect(rect, backgroundPaint);

    // Draw various vector shapes
    _drawWavePattern(canvas, size, isDarkMode);
    _drawFloatingShapes(canvas, size, isDarkMode);
    _drawGlowingDots(canvas, size, isDarkMode);
  }

  // Draw a wave pattern at the bottom
  void _drawWavePattern(Canvas canvas, Size size, bool isDarkMode) {
    final primaryWaveColor = isDarkMode
        ? const Color(0xFF5DE6DE).withValues(alpha: 0.15)
        : const Color(0xFF4287f5).withValues(alpha: 0.2);

    final secondaryWaveColor = isDarkMode
        ? const Color(0xFF5A8BFF).withValues(alpha: 0.1)
        : const Color(0xFF8A56AC).withValues(alpha: 0.15);

    final paint = Paint()
      ..color = primaryWaveColor
      ..style = PaintingStyle.fill;

    final wavePath = Path();
    wavePath.moveTo(0, size.height);

    // First wave
    for (double x = 0; x <= size.width; x += size.width / 20) {
      final double y = size.height - 100 + 30 * math.sin(x * 0.05);
      wavePath.lineTo(x, y);
    }

    wavePath.lineTo(size.width, size.height);
    wavePath.close();
    canvas.drawPath(wavePath, paint);

    // Second wave (higher frequency)
    final wavePath2 = Path();
    wavePath2.moveTo(0, size.height);
    final paint2 = Paint()
      ..color = secondaryWaveColor
      ..style = PaintingStyle.fill;

    for (double x = 0; x <= size.width; x += size.width / 40) {
      final double y = size.height - 50 + 20 * math.sin(x * 0.1);
      wavePath2.lineTo(x, y);
    }

    wavePath2.lineTo(size.width, size.height);
    wavePath2.close();
    canvas.drawPath(wavePath2, paint2);
  }

  // Draw floating geometric shapes
  void _drawFloatingShapes(Canvas canvas, Size size, bool isDarkMode) {
    final random = math.Random(42); // Fixed seed for consistency

    // Define theme-aware vibrant colors with transparency
    final colors = isDarkMode
        ? [
            const Color(0xFFFF61D2).withValues(alpha: 0.15), // Pink
            const Color(0xFFFE9090).withValues(alpha: 0.15), // Salmon
            const Color(0xFF7A66FF).withValues(alpha: 0.15), // Purple
            const Color(0xFF41C7FF).withValues(alpha: 0.15), // Blue
            const Color(0xFF41F1FF).withValues(alpha: 0.15), // Cyan
          ]
        : [
            const Color(0xFFE91E63).withValues(alpha: 0.25), // Pink
            const Color(0xFFFF5722).withValues(alpha: 0.2), // Deep Orange
            const Color(0xFF673AB7).withValues(alpha: 0.2), // Deep Purple
            const Color(0xFF2196F3).withValues(alpha: 0.25), // Blue
            const Color(0xFF009688).withValues(alpha: 0.2), // Teal
          ];

    // Draw hexagons
    for (int i = 0; i < 8; i++) {
      final centerX = random.nextDouble() * size.width;
      final centerY = random.nextDouble() * size.height * 0.7;
      final radius = 30.0 + random.nextDouble() * 50.0;

      final path = Path();
      for (int j = 0; j < 6; j++) {
        final angle = j * math.pi / 3;
        final x = centerX + radius * math.cos(angle);
        final y = centerY + radius * math.sin(angle);

        if (j == 0) {
          path.moveTo(x, y);
        } else {
          path.lineTo(x, y);
        }
      }
      path.close();

      final paint = Paint()
        ..color = colors[random.nextInt(colors.length)]
        ..style = PaintingStyle.fill;

      canvas.drawPath(path, paint);

      // Add a subtle stroke with theme-aware color
      final strokePaint = Paint()
        ..color = (isDarkMode ? Colors.white : Colors.black).withValues(alpha: 0.1)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1.0;

      canvas.drawPath(path, strokePaint);
    }

    // Draw circles with gradients
    for (int i = 0; i < 12; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;
      final radius = 20.0 + random.nextDouble() * 40.0;

      final gradientPaint = Paint()
        ..shader = RadialGradient(
          colors: [
            colors[random.nextInt(colors.length)],
            colors[random.nextInt(colors.length)].withValues(alpha: 0.05),
          ],
        ).createShader(Rect.fromCircle(center: Offset(x, y), radius: radius));

      canvas.drawCircle(Offset(x, y), radius, gradientPaint);
    }

    // Draw polygons
    for (int i = 0; i < 6; i++) {
      final centerX = random.nextDouble() * size.width;
      final centerY = random.nextDouble() * size.height;
      final radius = 20.0 + random.nextDouble() * 30.0;
      final sides = 3 + random.nextInt(3); // 3-5 sides

      final path = Path();
      for (int j = 0; j < sides; j++) {
        final angle = j * (2 * math.pi / sides);
        final x = centerX + radius * math.cos(angle);
        final y = centerY + radius * math.sin(angle);

        if (j == 0) {
          path.moveTo(x, y);
        } else {
          path.lineTo(x, y);
        }
      }
      path.close();

      final paint = Paint()
        ..color = colors[random.nextInt(colors.length)]
        ..style = PaintingStyle.fill;

      canvas.drawPath(path, paint);
    }
  }

  // Add glowing dots for a cosmic effect
  void _drawGlowingDots(Canvas canvas, Size size, bool isDarkMode) {
    final random = math.Random(24); // Different seed

    // Theme-aware glow colors
    final innerGlowColor = isDarkMode ? Colors.white.withValues(alpha: 0.6) : Colors.white.withValues(alpha: 0.7);

    final outerGlowColor = isDarkMode ? Colors.white.withValues(alpha: 0.15) : Colors.blue.withValues(alpha: 0.3);

    for (int i = 0; i < 60; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;
      final radius = 1.0 + random.nextDouble() * 2.5;

      // Inner glow
      final innerPaint = Paint()..color = innerGlowColor;

      // Outer glow
      final outerPaint = Paint()
        ..color = outerGlowColor
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3.0);

      canvas.drawCircle(Offset(x, y), radius * 2, outerPaint);
      canvas.drawCircle(Offset(x, y), radius, innerPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
