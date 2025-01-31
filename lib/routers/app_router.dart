part of 'router.dart';

@TypedStatefulShellRoute<IntroShell>(
  branches: [
    TypedStatefulShellBranch<IntroBranch>(
      routes: [
        TypedGoRoute<IntroRoute>(path: AppRoute.intro),
      ],
    ),
    TypedStatefulShellBranch<LoginBranch>(
      routes: [
        TypedGoRoute<LoginRoute>(path: AppRoute.login),
      ],
    )
  ],
)

/// [IntroShell]
class IntroShell extends StatefulShellRouteData {
  IntroShell();
  static final $navigatorKey = NavigatorKey.introShellKey;
  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return IntroScaffold(
      navigationShell: navigationShell,
      state: state,
    );
  }
}

@TypedStatefulShellRoute<HomeShell>(
  branches: [
    TypedStatefulShellBranch<MemoHomeBranch>(
      routes: [
        TypedGoRoute<MemoHomeRoute>(path: AppRoute.memoHome),
      ],
    ),
    TypedStatefulShellBranch<UserInfoBranch>(
      routes: [
        TypedGoRoute<UserInfoRoute>(path: AppRoute.userInfo),
      ],
    )
  ],
)

/// [HomeShell]
class HomeShell extends StatefulShellRouteData {
  HomeShell();
  static final $navigatorKey = NavigatorKey.homeShellKey;
  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return HomeScaffold(
      navigationShell: navigationShell,
      state: state,
    );
  }
}

@TypedStatefulShellRoute<DetailShell>(
  branches: [
    TypedStatefulShellBranch<MemoWritingBranch>(
      routes: [
        TypedGoRoute<MemoWritingRoute>(path: AppRoute.memoWriting),
      ],
    ),
  ],
)

/// [DetailShell]
class DetailShell extends StatefulShellRouteData {
  DetailShell();
  static final $navigatorKey = NavigatorKey.detailShellKey;
  @override
  Widget builder(BuildContext context, GoRouterState state,
      StatefulNavigationShell navigationShell) {
    return DetailScaffold(
      navigationShell: navigationShell,
      state: state,
    );
  }
}

/// [Branch]
class IntroBranch extends Branch {
  IntroBranch() : super($nativatorKey: NavigatorKey.introBranchKey);
}

class LoginBranch extends Branch {
  LoginBranch() : super($nativatorKey: NavigatorKey.loginBranchKey);
}

class MemoHomeBranch extends Branch {
  MemoHomeBranch() : super($nativatorKey: NavigatorKey.memoHomeBranchKey);
}

class MemoWritingBranch extends Branch {
  MemoWritingBranch() : super($nativatorKey: NavigatorKey.memoWritingBranchKey);
}

class UserInfoBranch extends Branch {
  UserInfoBranch() : super($nativatorKey: NavigatorKey.userInfoBranchKey);
}

/// [Route]
class IntroRoute extends Route {
  IntroRoute() : super(body: const IntroScreen());
}

class LoginRoute extends Route {
  LoginRoute() : super(body: const LoginScreen());
}

class MemoHomeRoute extends Route {
  MemoHomeRoute() : super(body: const MemoHomeScreen());
}

class MemoWritingRoute extends Route {
  MemoWritingRoute() : super(body: const MemoWritingScreen());
}

class UserInfoRoute extends Route {
  UserInfoRoute() : super(body: const UserInfoScreen());
}
