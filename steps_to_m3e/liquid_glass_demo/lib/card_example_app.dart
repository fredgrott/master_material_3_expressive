// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:liquid_glass_demo/card_example.dart';

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // so that we can use BackdropFilter.grouped
      // to make the liquid glass approach performant
      home: BackdropGroup(
        child: Scaffold(
          // so that we can use liquid glass in nav components
          backgroundColor: Theme.of(context).colorScheme.surfaceContainerLowest,
          appBar: AppBar(title: const Text('Card Sample')),
          body: const CardExample(),
        ),
      ),
    );
  }
}
