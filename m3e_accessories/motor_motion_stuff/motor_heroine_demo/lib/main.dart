// ignore_for_file: overridden_fields, unreachable_from_main, unnecessary_async

import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:heroine/heroine.dart';
import 'package:lorem_gen/lorem_gen.dart';
import 'package:motor_heroine_demo/image_grid.dart';
import 'package:motor_heroine_demo/zoom_transition.dart';


final springNotifier = ValueNotifier(const CupertinoMotion.bouncy());
final flightShuttleNotifier =
    ValueNotifier<HeroineShuttleBuilder>(const FlipShuttleBuilder());
final adjustSpringTimingToRoute = ValueNotifier(false);
final detailsPageAspectRatio = ValueNotifier(1.0);

void main() async {
  runApp(const HeroineExampleApp());
}

final heroineRoutes = [
  NamedRouteDef(
    name: 'Heroine',
    path: '',
    type: const RouteType.cupertino(),
    builder: (context, _) => const HeroineExamplePicker(),
  ),
  NamedRouteDef(
    name: ImageGridExample.name,
    path: ImageGridExample.path,
    type: const RouteType.cupertino(),
    builder: (context, _) => const ImageGridExample(),
  ),
  ...zoomTransitionRoutes,
];

final router = RootStackRouter.build(routes: heroineRoutes);

class HeroineExampleApp extends StatelessWidget {
  const HeroineExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: Listenable.merge(
        [
          springNotifier,
          flightShuttleNotifier,
          adjustSpringTimingToRoute,
          detailsPageAspectRatio,
        ],
      ),
      builder: (context, child) => CupertinoApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router.config(
          navigatorObservers: () => [
            HeroController(),
            HeroineController(),
          ],
        ),
      ),
    );
  }
}

class HeroineExamplePicker extends StatelessWidget {
  const HeroineExamplePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          const CupertinoSliverNavigationBar(),
          SliverPadding(
            padding: const EdgeInsets.all(32),
            sliver: SliverList.list(
              children: [
                CupertinoButton.filled(
                  onPressed: () => context.navigateTo(
                    const NamedRoute(ImageGridExample.name),
                  ),
                  child: const Text(ImageGridExample.name),
                ),
                const SizedBox(height: 16),
                CupertinoButton.filled(
                  onPressed: () => context.navigateTo(
                    const NamedRoute(ZoomTransitionExample.name),
                  ),
                  child: const Text(ZoomTransitionExample.name),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomRoute<T> extends PageRoute<T>
    with CupertinoRouteTransitionMixin, HeroinePageRouteMixin {
  MyCustomRoute({
    required this.settings,
    required this.title,
    required this.builder,
    this.fullscreenDialog = false,
  });

  @override
  final RouteSettings settings;

  @override
  final String title;

  final Widget Function(BuildContext context) builder;

  @override
  final bool fullscreenDialog;

  @override
  bool get maintainState => false;

  @override
  bool get opaque => false;

  @override
  Widget buildContent(BuildContext context) => builder(context);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    return CupertinoRouteTransitionMixin.buildPageTransitions(
      this,
      context,
      animation,
      const AlwaysStoppedAnimation(0),
      child,
    );
  }
}

final lorem = Lorem.paragraph(numParagraphs: 10);
