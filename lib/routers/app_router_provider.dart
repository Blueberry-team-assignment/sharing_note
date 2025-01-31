part of 'router.dart';

// @riverpod
// AppRouter appRouter(Ref ref) {
//   return AppRouter();
// }

final appRouterProvider = Provider((ref) {
  return AppRouter();
});

class AppRouter {
  AppRouter();

  late final config = GoRouter(
    routes: $appRoutes,
    initialLocation: AppRoute.intro,
    debugLogDiagnostics: true,
    navigatorKey: NavigatorKey.routerKey,
  );
}
