// Copyright 2025 Fredrick Allan Grott. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.
//
// Modified from old version of material_design
// BSD Clause 3 License, Copyright 2025 by Kevin Yuji Kobori

import 'package:flutter/material.dart';
import 'package:material_shapes_demo/shapes_preview.dart';


void main() {
  runApp(const App());
 }

class App extends StatelessWidget {
   const App({super.key});

   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       debugShowCheckedModeBanner: false,
       home: Scaffold(
         backgroundColor: Color(0xFFE5E4F8),
         body: Center(
           child: ShapesPreview(),
         ),
       ),
     );
   }
 }
