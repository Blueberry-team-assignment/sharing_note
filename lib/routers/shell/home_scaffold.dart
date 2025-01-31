part of '../router.dart';

class HomeScaffold extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  final GoRouterState state;
  const HomeScaffold({
    super.key,
    required this.navigationShell,
    required this.state,
  });
  @override
  ConsumerState<HomeScaffold> createState() => _HomeScaffoldState();
}

class _HomeScaffoldState extends ConsumerState<HomeScaffold> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isShowAppbar = ref.watch(appbarStateProvider);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          widget.navigationShell,
          if (isShowAppbar)
            AppNavigationBar(
              configs: appNavigationBarConfigs,
              selectedIndex: widget.navigationShell.currentIndex,
              onDestinationSelected: _goBranch,
              onFabPressed: () => context.go(AppRoute.memoWriting),
            ),
        ],
      ),
    );
  }
}
