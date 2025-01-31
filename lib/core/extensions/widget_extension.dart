import 'package:flutter/material.dart';

// enum BasicMatricSize {
//   size4,
//   size8,
// }

extension WidgetExtension on Widget {
  Widget get center => Center(child: this);

  Widget positioned({
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) =>
      Stack(
        children: <Widget>[
          Positioned(
            top: top,
            bottom: bottom,
            left: left,
            right: right,
            child: this,
          ),
        ],
      );

  Widget get expanded => Expanded(child: this);

  Widget get topCenter => Align(
        alignment: Alignment.topCenter,
        child: this,
      );

  Widget get topRight => Align(
        alignment: Alignment.topRight,
        child: this,
      );

  Widget get topLeft => Align(
        alignment: Alignment.topLeft,
        child: this,
      );

  Widget get bottomCenter => Align(
        alignment: Alignment.bottomCenter,
        child: this,
      );

  Widget get bottomRight => Align(
        alignment: Alignment.bottomRight,
        child: this,
      );

  Widget get bottomLeft => Align(
        alignment: Alignment.bottomLeft,
        child: this,
      );

  Widget get intrinsitHeight => IntrinsicHeight(
        child: this,
      );

  // Widget padding2({
  //   required BasicMatricSize size,
  // }) {
  //   double value;
  //   switch (size) {
  //     case BasicMatricSize.size4:
  //       value = 4;
  //     case BasicMatricSize.size8:
  //       value = 30;
  //     default:
  //       value = 8;
  //   }

  //   return Padding(
  //     padding: EdgeInsets.symmetric(
  //       horizontal: value,
  //       vertical: value,
  //     ),
  //     child: this,
  //   );
  // }

  Widget paddingSymmetric({
    required Size size,
  }) =>
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: size.width, vertical: size.height),
        child: this,
      );

  Widget paddingOnly({
    double? top,
    double? bottom,
    double? left,
    double? right,
  }) =>
      Padding(
        padding: EdgeInsets.only(
          top: top ?? 0.0,
          bottom: bottom ?? 0.0,
          left: left ?? 0.0,
          right: right ?? 0.0,
        ),
        child: this,
      );

  Widget gap(double size) => Padding(
        padding: EdgeInsets.all(size),
        child: this,
      );

  Widget flex(flex) => Flexible(
        flex: flex,
        child: this,
      );

  /// [Color Filter]
  Widget colorFiltered(Color color) => ColorFiltered(
        colorFilter: ColorFilter.mode(
          color.withOpacity(0.5),
          BlendMode.darken,
        ),
        child: this,
      );

  /// [IgnorePointer]
  /// 예를 들어 버튼 위에 반투명한 레이어를 덮어 씌워 버튼이 클릭되지 않도록 방지
  /// ignoring: true 로 설정하면 해당 위젯과 자식 위젯들이 터치 이벤트를 받지 않는다
  Widget ignorePointer(
    bool ignoring, {
    Color? color,
  }) =>
      IgnorePointer(
        ignoring: ignoring,
        child: Container(
          color: color?.withOpacity(0.3),
          child: this,
        ),
      );
}
