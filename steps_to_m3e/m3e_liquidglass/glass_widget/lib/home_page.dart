// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from BlurBox
// Apache 2.0 License
// Copyright 2024 Omid Haqi

// ignore_for_file: avoid_redundant_argument_values

// Shows all available BlurBox examples in a grid layout.
import 'package:flutter/material.dart';
import 'package:glass_widget/blurbox/core/blur_box.dart';
import 'package:glass_widget/list_exampe_widget.dart';
import 'package:glass_widget/vector_background.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // the right place to insert the BackdropGroup
    // inherited widget is here to wrap the scaffold
    // it will automatically group child
    // BackdropFilter.grouped declarations together
    // in one Scene layer without having to specify
    // a backdropKey.
    return BackdropGroup(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true, // Allow content to go behind the bottom nav bar
        appBar: AppBar(
          forceMaterialTransparency: true,
          title: const Text('BlurBox Examples'),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          flexibleSpace: BlurBox(
            height: 210,
            blur: 8,
            color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16)),
            child: const SizedBox.shrink(),
          ),
        ),
        bottomNavigationBar: BlurBox(
          color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
          blur: 10,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 8),
            child: Theme(
              data: Theme.of(context).copyWith(splashColor: Colors.transparent, highlightColor: Colors.transparent),
              child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: _selectedIndex,
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                backgroundColor: Colors.transparent,
                elevation: 0,
                selectedItemColor: Theme.of(context).colorScheme.primary,
                unselectedItemColor: Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
                items: const [
                  BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
                  BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            // Vector Background
            const VectorBackground(),

            // Content
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 1.0,
                ),
                physics: const AlwaysScrollableScrollPhysics().applyTo(const BouncingScrollPhysics()),
                itemCount: exampleWidgets.length,
                itemBuilder: (context, index) {
                  final example = exampleWidgets[index];
                  return InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => example.builder())),
                    borderRadius: BorderRadius.circular(16),
                    child: BlurBox(
                      blur: 5,
                      color: Theme.of(context).colorScheme.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(16),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(example.icon, size: 40, color: Theme.of(context).colorScheme.primary),
                          const SizedBox(height: 8),
                          Text(
                            example.title,
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
