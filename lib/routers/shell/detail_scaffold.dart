part of '../router.dart';

class DetailScaffold extends ConsumerStatefulWidget {
  final StatefulNavigationShell navigationShell;
  final GoRouterState state;
  const DetailScaffold({
    super.key,
    required this.navigationShell,
    required this.state,
  });
  @override
  ConsumerState<DetailScaffold> createState() => _DetailScaffoldState();
}

class _DetailScaffoldState extends ConsumerState<DetailScaffold> {
  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => context.go(AppRoute.memoHome),
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
      ),
      body: SafeArea(child: widget.navigationShell),
    );
  }
}
