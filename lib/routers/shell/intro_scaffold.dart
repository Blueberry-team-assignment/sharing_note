part of '../router.dart';

class IntroScaffold extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  final GoRouterState state;
  const IntroScaffold({
    super.key,
    required this.navigationShell,
    required this.state,
  });
  @override
  ConsumerState<IntroScaffold> createState() => _IntroScaffoldState();
}

class _IntroScaffoldState extends ConsumerState<IntroScaffold> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: widget.navigationShell),
    );
  }
}
