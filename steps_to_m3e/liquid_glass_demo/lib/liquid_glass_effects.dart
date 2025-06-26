// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from liquid glass texture

// ignore_for_file: avoid_classes_with_only_static_members

import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sprung/sprung.dart';

// simulate apple's saturation
const List<double> darkMatrix = <double>[
    1.385, -0.56, -0.112, 0.0, 0.3, //
    -0.315, 1.14, -0.112, 0.0, 0.3, //
    -0.315, -0.56, 1.588, 0.0, 0.3, //
    0.0, 0.0, 0.0, 1.0, 0.0
  ];

const List<double> lightMatrix = <double>[
    1.74, -0.4, -0.17, 0.0, 0.0, //
    -0.26, 1.6, -0.17, 0.0, 0.0, //
    -0.26, -0.4, 1.83, 0.0, 0.0, //
    0.0, 0.0, 0.0, 1.0, 0.0
  ];


/// Requires using at the top of widget tree
/// the BackdropGroup widget to act as
/// inherited widget. Easiest way is to wrap the
/// Scaffold in one.
///
class LiquidGlassEffects {
  static BoxDecoration getGlassDecoration({Color? backgroundColor, double borderRadius = 12.0, bool isDark = false}) {
    return BoxDecoration(
      color: (backgroundColor ?? (isDark ? const Color(0x22FFFFFF) : const Color(0x22FFFFFF))).withValues(alpha: 0.22),
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: isDark ? Colors.white.withValues(alpha: 0.35) : Colors.black.withValues(alpha: 0.35),
        width: 1.2,
      ),
      boxShadow: [
        BoxShadow(
          color: isDark ? Colors.black.withValues(alpha: 0.08) : Colors.white.withValues(alpha: 0.08),
          blurRadius: 40,
          offset: const Offset(0, 12),
        ),
      ],
      // Add a subtle gradient for gloss
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors:
            isDark
                ? [Colors.white.withValues(alpha: 0.30), Colors.white.withValues(alpha: 0.10), Colors.transparent]
                : [Colors.black.withValues(alpha: 0.30), Colors.black.withValues(alpha: 0.10), Colors.transparent],
        stops: const [0.0, 0.4, 1.0],
      ),
    );
  }

  static Widget buildGlassContainer({
    required Widget child,
    double borderRadius = 12.0,
    Color? backgroundColor,
    bool isDark = false,
    EdgeInsetsGeometry? padding,
    double? width,
    double? height,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Stack(
        children: [
          // Liquid flow animation background
          Positioned.fill(child: LiquidFlowAnimation(isDark: isDark)),
          // Blur effect (stronger for more glassy look)
          // adjusted for Apple saturation
          BackdropFilter.grouped(
            filter: ImageFilter.compose(
          outer: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
          inner: ColorFilter.matrix(
            isDark 
                ? darkMatrix
                : lightMatrix,
          )
        ),
            child: Container(
              width: width,
              height: height,
              padding: padding,
              decoration: getGlassDecoration(
                backgroundColor: backgroundColor,
                borderRadius: borderRadius,
                isDark: isDark,
              ),
              child: Stack(
                children: [
                  // Glossy highlight overlay
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(borderRadius)),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white.withValues(alpha: 0.28),
                            Colors.white.withValues(alpha: 0.06),
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.5, 1.0],
                        ),
                      ),
                    ),
                  ),
                  // Main child
                  child,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget buildLiquidEffect({
    required Widget child,
    bool isPressed = false,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    return AnimatedScale(scale: isPressed ? 0.97 : 1.0, duration: duration, curve: Sprung.underDamped, child: child);
  }
}

class LiquidFlowAnimation extends StatefulWidget {
  final bool isDark;

  const LiquidFlowAnimation({super.key, required this.isDark});

  @override
  State<LiquidFlowAnimation> createState() => _LiquidFlowAnimationState();
}

class _LiquidFlowAnimationState extends State<LiquidFlowAnimation> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Offset> _points = [];
  final int _numPoints = 5;
  final double _maxOffset = 20.0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 10))..repeat();

    // Initialize random points
    for (int i = 0; i < _numPoints; i++) {
      _points.add(Offset(math.Random().nextDouble() * _maxOffset, math.Random().nextDouble() * _maxOffset));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          painter: LiquidFlowPainter(points: _points, progress: _controller.value, isDark: widget.isDark),
          size: Size.infinite,
        );
      },
    );
  }
}

class LiquidFlowPainter extends CustomPainter {
  final List<Offset> points;
  final double progress;
  final bool isDark;

  LiquidFlowPainter({required this.points, required this.progress, required this.isDark});

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = isDark ? Colors.white.withValues(alpha: 0.03) : Colors.black.withValues(alpha: 0.03)
          ..style = PaintingStyle.fill;

    final path = Path();
    final center = Offset(size.width / 2, size.height / 2);

    for (int i = 0; i < points.length; i++) {
      final point = points[i];
      final angle = (i / points.length) * 2 * math.pi + progress * 2 * math.pi;
      final x = center.dx + math.cos(angle) * point.dx;
      final y = center.dy + math.sin(angle) * point.dy;

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(LiquidFlowPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
