part of 'router.dart';

class AppRoute {
  AppRoute._();
  static const intro = "/intro";
  static const userInfo = "/user-info";
  static const login = "/login";
  static const memoHome = "/memo-home";
  static const memoWriting = "/memo-writing";
}

class NavigatorKey {
  NavigatorKey._();

  static final routerKey = GlobalKey<NavigatorState>(debugLabel: "router_key");

  /// [Shell 키]
  static final introShellKey =
      GlobalKey<NavigatorState>(debugLabel: "intro_shell_key");

  static final homeShellKey =
      GlobalKey<NavigatorState>(debugLabel: "home_shell_key");

  static final detailShellKey =
      GlobalKey<NavigatorState>(debugLabel: "detail_shell_key");

  /// [Branch 키]
  static final introBranchKey =
      GlobalKey<NavigatorState>(debugLabel: "intro_branch_key");
  static final loginBranchKey =
      GlobalKey<NavigatorState>(debugLabel: "login_branch_key");

  static final memoHomeBranchKey =
      GlobalKey<NavigatorState>(debugLabel: "memo_home_branch_key");

  static final memoWritingBranchKey =
      GlobalKey<NavigatorState>(debugLabel: "memo_writing_branch_key");

  static final userInfoBranchKey =
      GlobalKey<NavigatorState>(debugLabel: "user_info_branch_key");
}

abstract class Branch extends StatefulShellBranchData {
  final GlobalKey<NavigatorState> $nativatorKey;
  const Branch({required this.$nativatorKey});
}

abstract class Route extends GoRouteData {
  final Widget body;
  const Route({
    required this.body,
  });

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return body;
  }
}
