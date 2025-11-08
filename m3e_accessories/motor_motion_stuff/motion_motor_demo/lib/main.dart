// ignore_for_file: unnecessary_async

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:motion_motor_demo/2d_redirection.dart';
import 'package:motion_motor_demo/draggable_icons.dart';
import 'package:motion_motor_demo/flip_card.dart';
import 'package:motion_motor_demo/one_dimension.dart';
import 'package:motion_motor_demo/phase_animation/phase_animation.dart';
import 'package:motion_motor_demo/pip.dart';
import 'package:motion_motor_demo/title_slide.dart';


void main() async {
  runApp(
    CupertinoApp.router(
      routerConfig: router.config(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

final motorRoutes = [
  NamedRouteDef(
    name: 'Motor Examples',
    path: '',
    type: const RouteType.cupertino(),
    builder: (context, state) => const MotorExample(),
  ),
  NamedRouteDef(
    name: OneDimensionExample.name,
    path: OneDimensionExample.path,
    type: const RouteType.cupertino(),
    builder: (context, state) => const OneDimensionExample(),
  ),
  NamedRouteDef(
    name: TwoDimensionRedirectionExample.name,
    path: TwoDimensionRedirectionExample.path,
    type: const RouteType.cupertino(),
    builder: (context, state) => const TwoDimensionRedirectionExample(),
  ),
  NamedRouteDef(
    name: DraggableIconsExample.name,
    path: DraggableIconsExample.path,
    type: const RouteType.cupertino(),
    builder: (context, state) => const DraggableIconsExample(),
  ),
  NamedRouteDef(
    name: PipExample.name,
    path: PipExample.path,
    type: const RouteType.cupertino(),
    builder: (context, state) => const PipExample(),
  ),
  NamedRouteDef(
    name: FlipCardExample.name,
    path: FlipCardExample.path,
    type: const RouteType.cupertino(),
    builder: (context, state) => const FlipCardExample(),
  ),
  NamedRouteDef(
    name: TitleSlideExample.name,
    path: TitleSlideExample.path,
    type: const RouteType.cupertino(),
    builder: (context, state) => const TitleSlideExample(),
  ),
  NamedRouteDef(
    name: SequenceAnimationExamples.name,
    path: SequenceAnimationExamples.path,
    type: const RouteType.cupertino(),
    builder: (context, state) => const SequenceAnimationExamples(),
  ),
];

final router = RootStackRouter.build(
  routes: [
    NamedRouteDef.shell(
      name: 'Home',
      path: '/',
      type: const RouteType.cupertino(),
      children: motorRoutes,
    ),
  ],
);

class MotorExample extends StatelessWidget {
  const MotorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 16,
                children: [
                  for (final route in motorRoutes) ...[
                    if (route.path != '')
                      buildDestinationButton(context, route.name),
                  ],
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildDestinationButton(BuildContext context, String name) {
    return CupertinoButton.filled(
      onPressed: () => context.navigateTo(NamedRoute(name)),
      child: Text(name),
    );
  }
}
