import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimateIcon extends StatefulWidget {
  const AnimateIcon({
    required this.startIcon,
    required this.endIcon,
    this.size,
    this.startIconColor,
    this.endIconColor,
    this.duration,
    this.clockwise,
    required this.controller,
    this.listener,
    this.onTap,
    required this.rotate,
  });
  final IconData startIcon, endIcon;
  final Duration? duration;
  final bool? clockwise;
  final double? size;
  final Color? startIconColor, endIconColor;
  final AnimateIconController controller;
  final Function? onTap;
  final Function? listener;
  final bool rotate;

  @override
  _AnimateIconsState createState() => _AnimateIconsState();
}

class _AnimateIconsState extends State<AnimateIcon>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration ?? const Duration(seconds: 1),
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    _controller.addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    _controller
        .addStatusListener(widget.listener! as Function(AnimationStatus));
    initControllerFunctions();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  initControllerFunctions() {
    widget.controller.animateToEnd = () {
      if (mounted) {
        _controller.forward();
        return true;
      } else {
        return false;
      }
    };
    widget.controller.animateToStart = () {
      if (mounted) {
        _controller.reverse();
        return true;
      } else {
        return false;
      }
    };
    widget.controller.isStart = () => _controller.value == 0.0;
    widget.controller.isEnd = () => _controller.value == 1.0;
  }

  _onStartIconPress() {
    if (mounted) {
      _controller.forward();
      widget.onTap!();
    }
  }

  _onEndIconPress() {
    if (mounted) {
      _controller.reverse();
      widget.onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    double x = _controller.value;
    double y = 1.0 - _controller.value;
    double angleX = (widget.rotate) ? math.pi / 180 * (180 * x) : 0;
    double angleY = (widget.rotate) ? math.pi / 180 * (180 * y) : 0;

    Widget first() {
      return Transform.rotate(
        angle: widget.clockwise ?? false ? angleX : -angleX,
        child: Opacity(
          opacity: y,
          child: GestureDetector(
            child: Icon(
              widget.startIcon,
              size: widget.size,
              color: widget.startIconColor ?? Theme.of(context).primaryColor,
            ),
            onTap: _onStartIconPress,
          ),
        ),
      );
    }

    Widget second() {
      return Transform.rotate(
        angle: widget.clockwise ?? false ? -angleY : angleY,
        child: Opacity(
          opacity: x,
          child: GestureDetector(
            child: Icon(
              widget.endIcon,
              size: widget.size,
              color: widget.endIconColor ?? Theme.of(context).primaryColor,
            ),
            onTap: _onEndIconPress,
          ),
        ),
      );
    }

    return Stack(
      alignment: Alignment.center,
      children: [
        x == 1 && y == 0 ? second() : first(),
        x == 0 && y == 1 ? first() : second(),
      ],
    );
  }
}

class AnimateIconController {
  late bool Function() animateToStart, animateToEnd;
  late bool Function() isStart, isEnd;
}
