// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $introShell,
      $homeShell,
      $detailShell,
    ];

RouteBase get $introShell => StatefulShellRouteData.$route(
      factory: $IntroShellExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/intro',
              factory: $IntroRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/login',
              factory: $LoginRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $IntroShellExtension on IntroShell {
  static IntroShell _fromState(GoRouterState state) => const IntroShell();
}

extension $IntroRouteExtension on IntroRoute {
  static IntroRoute _fromState(GoRouterState state) => IntroRoute();

  String get location => GoRouteData.$location(
        '/intro',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LoginRouteExtension on LoginRoute {
  static LoginRoute _fromState(GoRouterState state) => LoginRoute();

  String get location => GoRouteData.$location(
        '/login',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeShell => StatefulShellRouteData.$route(
      factory: $HomeShellExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/memo-home',
              factory: $MemoHomeRouteExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/user-info',
              factory: $UserInfoRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeShellExtension on HomeShell {
  static HomeShell _fromState(GoRouterState state) => const HomeShell();
}

extension $MemoHomeRouteExtension on MemoHomeRoute {
  static MemoHomeRoute _fromState(GoRouterState state) => MemoHomeRoute();

  String get location => GoRouteData.$location(
        '/memo-home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UserInfoRouteExtension on UserInfoRoute {
  static UserInfoRoute _fromState(GoRouterState state) => UserInfoRoute();

  String get location => GoRouteData.$location(
        '/user-info',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $detailShell => StatefulShellRouteData.$route(
      factory: $DetailShellExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          routes: [
            GoRouteData.$route(
              path: '/memo-writing',
              factory: $MemoWritingRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $DetailShellExtension on DetailShell {
  static DetailShell _fromState(GoRouterState state) => const DetailShell();
}

extension $MemoWritingRouteExtension on MemoWritingRoute {
  static MemoWritingRoute _fromState(GoRouterState state) => MemoWritingRoute();

  String get location => GoRouteData.$location(
        '/memo-writing',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
