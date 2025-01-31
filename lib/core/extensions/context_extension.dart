import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';

extension ContextExtension on BuildContext {
  /// 1. [Dialog]
  /// 2. [BottomSheet]
  Future showBottomSheet({
    required Widget child,
    bool isScrollControlled = true,
    bool isDismissible = true,
    bool useRootNavigator = true,
    Color? backgroundColor,
    Future Function(dynamic)? afterClose,
  }) {
    return showModalBottomSheet(
        context: this,
        isScrollControlled: isScrollControlled,
        // 전체화면여부
        isDismissible: isDismissible,
        useSafeArea: isScrollControlled,
        useRootNavigator: useRootNavigator,
        backgroundColor: backgroundColor,
        barrierColor: Colors.black.withOpacity(0.7),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        builder: (context) => child).then(afterClose ?? (value) => null);
  }

  /// 2-2. [FullDialog]
  Future<void> showFullDialog({
    required Widget child,
  }) async {
    await showGeneralDialog(
      context: this,
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.7),
      pageBuilder: (
        BuildContext context,
        Animation<double> animation,
        Animation<double> secondaryAnimation,
      ) =>
          AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
        content: child,
      ),
    );
  }

  /// 2-3 [Dialog]
  Future<void> showCustomDialog({
    required Widget child,
  }) async {
    await showCupertinoDialog(
      context: this,
      builder: (_) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          content: child,
        );
      },
    );
  }

  /// 3. [Snackbar]
  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    String message, {
    Color? backgroundColor,
    int? seconds,
  }) {
    return ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        content: Text(message),
        behavior: SnackBarBehavior.floating,
        duration: Duration(seconds: seconds ?? 3),
        showCloseIcon: true,
      ),
    );
  }

  void clearSnackBar() {
    ScaffoldMessenger.of(this).clearSnackBars();
  }

  /// 4. [Toast]
  Future<bool?> showToast({
    required String message,
    Color? backgroundColor,
    ToastGravity? position,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      backgroundColor: backgroundColor,
      toastLength: Toast.LENGTH_SHORT,
      gravity: position ?? ToastGravity.BOTTOM,
    );
  }

  /// 5. [Navigation / Route]
  NavigatorState get route => Navigator.of(this);

  // void get goBack => Navigator.of(this, rootNavigator: true).pop();
  void get goBack => GoRouter.of(this).pop(true);

  String get extraString => GoRouterState.of(this).extra! as String;

  Uri get currentPath => GoRouter.of(this).routeInformationProvider.value.uri;

  List get paths => currentPath.pathSegments;

  /// 6. [Width / Height]
  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  Size get size => MediaQuery.of(this).size;

  /// 7. [Padding / Margin]
  EdgeInsets gap({
    required Size size,
    bool isSymmetric = true,
  }) {
    return EdgeInsets.symmetric(
      horizontal: size.width,
      vertical: size.height,
    );
  }

  /// 8. [Colors]
  Color get primary => Theme.of(this).colorScheme.primary;

  Color get onPrimary => Theme.of(this).colorScheme.onPrimary;

  Color get secondary => Theme.of(this).colorScheme.secondary;

  Color get onSecondary => Theme.of(this).colorScheme.onSecondary;

  Color get tertiary => Theme.of(this).colorScheme.tertiary;

  Color get onTertiary => Theme.of(this).colorScheme.onTertiary;

  Color get error => Theme.of(this).colorScheme.error;

  Color get onError => Theme.of(this).colorScheme.onError;

  Color get background => Theme.of(this).colorScheme.surface;

  Color get textColor => Theme.of(this).colorScheme.onSurface;

  Color get border => Theme.of(this).colorScheme.outline;

  Color get shadow => Theme.of(this).colorScheme.shadow;

  Color get scrim => Theme.of(this).colorScheme.scrim;

  Color get surfaceTint => Theme.of(this).colorScheme.surfaceTint;

  // CustomThemeExtension? themeExtension({required int key}) =>
  //     getCustomThemeExtensionByKey(this, key);

  /// 9. [TextStyle]

  TextStyle? get headline1Text =>
      Theme.of(this).textTheme.headlineLarge?.copyWith(
            fontSize: 48,
            height: 1.2,
            fontWeight: FontWeight.bold,
          );

  TextStyle? get headline2Text =>
      Theme.of(this).textTheme.headlineMedium?.copyWith(
            fontSize: 32,
            height: 1.2,
            fontWeight: FontWeight.bold,
          );

  TextStyle? get headline3Text =>
      Theme.of(this).textTheme.headlineSmall?.copyWith(
            fontSize: 24,
            height: 1.2,
            fontWeight: FontWeight.bold,
          );

  TextStyle? get titleTextBold =>
      Theme.of(this).textTheme.titleMedium?.copyWith(
            fontSize: 24,
            height: 1.5,
            fontWeight: FontWeight.bold,
          );

  TextStyle? get titleText => Theme.of(this).textTheme.titleMedium?.copyWith(
        fontSize: 18,
        height: 1.5,
      );

  TextStyle? get subTitleText => Theme.of(this).textTheme.titleMedium?.copyWith(
        fontSize: 16,
        height: 2,
      );

  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall;

  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium;

  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall;

  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium;

  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge;

  TextStyle? get headerSmall => Theme.of(this).textTheme.headlineSmall;

  TextStyle? get headerMedium => Theme.of(this).textTheme.headlineMedium;

  TextStyle? get headerLarge => Theme.of(this).textTheme.headlineLarge;

  TextStyle? get dpSmall => Theme.of(this).textTheme.displaySmall;
  TextStyle? get dpMedium => Theme.of(this).textTheme.displayMedium;
  TextStyle? get dpLarge => Theme.of(this).textTheme.displayLarge;

  /// 10. [DatePicker]
  Future showDatePicker({
    DateTime? firstDate,
    DateTime? lastDate,
    required DateTime rangeFirstDate,
    required DateTime rangeEndDate,
  }) async {
    return showDateRangePicker(
      context: this,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      firstDate:
          firstDate ?? DateTime.now().subtract(const Duration(days: 365)),
      lastDate: lastDate ?? DateTime.now(),
      initialDateRange: DateTimeRange(start: rangeFirstDate, end: rangeEndDate),
      useRootNavigator: false,
      builder: (_, child) => Theme(
        data: ThemeData.light().copyWith(),
        child: Wrap(
          children: [child!],
        ),
      ),
    );
  }

  /// 11. [Locale]
  // AppLocalizations get loc => AppLocalizations.of(this)!;
}

// CustomThemeExtension? getCustomThemeExtensionByKey(
//     BuildContext context, int key) {
//   final extensions = Theme.of(context).extensions.values;

//   for (var extension in extensions) {
//     if (extension is CustomThemeExtension && extension.key == key) {
//       return extension;
//     }
//   }
//   return null;
// }
