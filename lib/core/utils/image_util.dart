import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class ImageUtil {
  ImageUtil._();

  static Widget showImage(
    String path, {
    // double? width,
    // double? height,
    Size? size,
    bool onLoading = true,
    Color? color,
    ColorFilter? colorFilter,
    BoxFit? fit,
  }) {
    const emptyImage = '';

    /// 1. [Cache Image]
    try {
      if (path.contains('http') && path.toLowerCase().endsWith('.svg')) {
        return SvgPicture.network(
          path,
          fit: fit ?? BoxFit.cover,
          color: color,
          colorFilter: colorFilter,
        );
      } else if (path.contains('http') || path.contains('https')) {
        return CachedNetworkImage(
          imageUrl: path.toString(),
          fit: fit ?? BoxFit.cover,
          // errorWidget: (_, url, __) =>
          //     Image.asset("assets/images/no_image.svg"),
        );
      } else if (path.contains('/cache')) {
        return Image.file(File(path));
      } else if (path.contains('.svg')) {
        return SvgPicture.asset(
          path,
          fit: fit ?? BoxFit.cover,
          width: size?.width,
          height: size?.height,
          color: color,
          colorFilter: colorFilter,

          // color: color ?? Colors.black,
        );
      } else if (path.contains('.json')) {
        return ShowLotti(
          path: path,
          size: size?.width,
          onLoading: onLoading,
        );
      } else {
        return Image.asset(
          path,
          fit: fit ?? BoxFit.cover,
          width: size?.width,
          height: size?.height,
          color: color,
        );
      }
    } catch (e) {
      return SvgPicture.asset(
        emptyImage,
        fit: fit ?? BoxFit.cover,
        width: size?.width,
        height: size?.height,
        color: color,
        colorFilter: colorFilter,
      );
    }
  }

  static Widget showFullImage(
    String path, {
    Size? size,
    int offset = 0,
    Color? color,
    bool onLoading = true,
  }) {
    return LayoutBuilder(
      builder: (context, layout) {
        return ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Container(
            width: layout.maxWidth,
            height: layout.maxHeight > offset
                ? layout.maxHeight - offset
                : double.infinity,
            color: color ?? Colors.black.withOpacity(0.4),
            child: showImage(
              path,
              onLoading: onLoading,
              size: size,
            ),
          ),
        );
      },
    );
  }
}

class ShowLotti extends StatefulWidget {
  final String path;
  final double? size;
  final bool? onLoading;
  const ShowLotti({
    super.key,
    required this.path,
    this.size = 100,
    this.onLoading = false,
  });

  @override
  State<ShowLotti> createState() => _ShowLottiState();
}

class _ShowLottiState extends State<ShowLotti>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final LottieBuilder _lottieBuilder;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(vsync: this);
    _lottieBuilder = LottieBuilder.asset(
      widget.path,
      controller: _animationController,
      onLoaded: (composition) {
        _animationController
          ..duration = composition.duration
          ..repeat();
      },
      width: widget.size,
      height: widget.size,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: widget.onLoading! ? _lottieBuilder : null,
    );
  }
}
