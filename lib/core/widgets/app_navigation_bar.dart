import 'package:flutter/material.dart';
import 'package:sharing_memo/core/extensions/context_extension.dart';
import 'package:sharing_memo/core/extensions/widget_extension.dart';
import 'package:sharing_memo/core/types/navigation_bar_type.dart';
import 'package:sharing_memo/core/utils/image_util.dart';

class AppNavigationBar extends StatelessWidget {
  final List<NavigationBarType> configs;
  final int selectedIndex;
  final void Function(int)? onDestinationSelected;
  final VoidCallback? onFabPressed;
  const AppNavigationBar({
    super.key,
    required this.configs,
    required this.selectedIndex,
    this.onDestinationSelected,
    this.onFabPressed,
  });

  Widget _navigationDestination(
    BuildContext context, {
    String? label,
    Size? iconSize,
    Color? selectedColor,
    Color? unselectedColor,
    required String iconPath,
    bool enabled = true,
  }) {
    return NavigationDestination(
      icon: ImageUtil.showImage(
        iconPath,
        size: iconSize,
        color: unselectedColor ?? context.textColor,
        fit: BoxFit.fill,
      ),
      selectedIcon: ImageUtil.showImage(
        iconPath,
        size: iconSize,
        color: selectedColor,
        fit: BoxFit.fill,
      ),
      enabled: enabled,
      label: label ?? "",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        NavigationBar(
          height: kBottomNavigationBarHeight,
          selectedIndex: selectedIndex,
          onDestinationSelected: onDestinationSelected,
          destinations: configs.map((config) {
            return _navigationDestination(
              context,
              iconPath: config.imagePath ?? "",
              iconSize: const Size(20, 20),
            );
          }).toList(),
          indicatorColor: Colors.transparent,
        ).positioned(bottom: 0, left: 0, right: 0),
        FloatingActionButton(
          elevation: 0,
          shape: const CircleBorder(),
          backgroundColor: Colors.transparent,
          onPressed: onFabPressed,
          child: ImageUtil.showImage(
            "assets/icons/ic_edit.svg",
            size: const Size(54, 54),
          ),
        ).positioned(
          bottom: 10,
          left: context.width / 2 - 28,
        ),
      ],
    );
  }
}
