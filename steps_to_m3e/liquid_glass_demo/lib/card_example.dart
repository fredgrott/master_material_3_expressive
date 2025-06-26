// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:liquid_glass_demo/liquid_glass_effects.dart';

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Center(
      // ListTile requires a parent Material for highlight and
      // selection  animation so need to wrap it a glass container
      child: LiquidGlassEffects.buildGlassContainer(
        borderRadius: 16,
        isDark: isDark,
        backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album),
                title: Text('The Enchanted Nightingale'),
                subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  LiquidGlassEffects.buildGlassContainer(
                    borderRadius: 8,
                    isDark: isDark,
                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                    child: TextButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                  LiquidGlassEffects.buildGlassContainer(
                    borderRadius: 8,
                    isDark: isDark,
                    backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                    child: TextButton(
                      child: const Text('LISTEN'),
                      onPressed: () {
                        /* ... */
                      },
                    ),
                  ),
                  const SizedBox(width: 8),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
