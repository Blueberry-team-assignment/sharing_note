import 'dart:ui';

class NavigationBarType {
  final String? imagePath;
  final String label;
  final VoidCallback? onPressed;

  NavigationBarType({
    this.imagePath,
    required this.label,
    this.onPressed,
  });
}
