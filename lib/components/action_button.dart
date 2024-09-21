// ignore_for_file: must_be_immutable, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:gotham_coder_work/core/app_colors/app_colors.dart';
import 'package:gotham_coder_work/core/app_styles/app_styles.dart';


class ActionGradientButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool hasIcon;
  dynamic icon;
  dynamic buttonHeight;
  dynamic buttonWidth;
  final String buttonText;
  final double textSize;
  dynamic roundedRadius;
  final bool enable ;
  final Color iconColor;
  final Color textColor;

  ActionGradientButton({
    super.key,
    required this.hasIcon,
    this.enable = true,
    this.icon,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonText,
     this.roundedRadius,
    required this.onTap,
     this.iconColor = Colors.white,
     this.textColor = Colors.white,
    this.textSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return InkWell(
      onTap: enable ?  onTap : null,
      child: Container(decoration: AppStyles.primaryColorGradient.copyWith(borderRadius: roundedRadius),
        height: buttonHeight,
        width: buttonWidth,
        child: hasIcon
            ? const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 1.0),
                child: Icon(Icons.done)
              ),
            )
            : Center(
                child: Text(buttonText,
                    style:  TextStyle(
                        // color: Theme.of(context).primaryColor,
                        color: textColor,
                        fontWeight: FontWeight.w400,
                        fontSize: textSize)),
              ),
      ),
    );
  }
}


class ActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final bool hasIcon;
  dynamic icon;
  dynamic buttonHeight;
  dynamic buttonWidth;
  final String buttonText;
  final double textSize;
  dynamic roundedRadius;
  final bool enable ;
  final Color iconColor;
  final Color textColor;

  ActionButton({
    super.key,
    required this.hasIcon,
    this.enable = true,
    this.icon,
    required this.buttonHeight,
    required this.buttonWidth,
    required this.buttonText,
    this.roundedRadius,
    required this.onTap,
    this.iconColor = Colors.white,
    this.textColor = Colors.white,
    this.textSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    // SizeConfig().init(context);
    return InkWell(
      onTap: enable ?  onTap : null,
      child: Container(decoration: AppStyles.primaryRoundedContainer.copyWith(color: AppColors.primaryColor,borderRadius: roundedRadius),
        height: buttonHeight,
        width: buttonWidth,
        child: hasIcon
            ? const Center(
          child: Padding(
            padding: EdgeInsets.only(top: 1.0),
            child: Icon(Icons.abc)
          ),
        )
            : Center(
          child: Text(buttonText,
              style:  TextStyle(
                // color: Theme.of(context).primaryColor,
                  color: textColor,
                  fontWeight: FontWeight.w400,
                  fontSize: textSize)),
        ),
      ),
    );
  }
}

class UnicornOutlineButton extends StatelessWidget {
  final _GradientPainter _painter;
  final Widget _child;
  final VoidCallback _callback;
  final double _radius;

  UnicornOutlineButton({super.key,
    required double strokeWidth,
    required double radius,
    required Gradient gradient,
    required Widget child,
    required VoidCallback onPressed,
  })  : _painter = _GradientPainter(strokeWidth: strokeWidth, radius: radius, gradient: gradient),
        _child = child,
        _callback = onPressed,
        _radius = radius;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _painter,
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: _callback,
        child: InkWell(
          borderRadius: BorderRadius.circular(_radius),
          onTap: _callback,
          child: Container(
            constraints:  BoxConstraints(minWidth: MediaQuery.of(context).size.width * 0.89, minHeight: 43),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _child,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _GradientPainter extends CustomPainter {
  final Paint _paint = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  _GradientPainter({required this.strokeWidth, required this.radius, required this.gradient});

  @override
  void paint(Canvas canvas, Size size) {
    // create outer rectangle equals size
    Rect outerRect = Offset.zero & size;
    var outerRRect = RRect.fromRectAndRadius(outerRect, Radius.circular(radius));

    // create inner rectangle smaller by strokeWidth
    Rect innerRect = Rect.fromLTWH(strokeWidth, strokeWidth, size.width - strokeWidth * 2, size.height - strokeWidth * 2);
    var innerRRect = RRect.fromRectAndRadius(innerRect, Radius.circular(radius - strokeWidth));

    // apply gradient shader
    _paint.shader = gradient.createShader(outerRect);

    // create difference between outer and inner paths and draw it
    Path path1 = Path()..addRRect(outerRRect);
    Path path2 = Path()..addRRect(innerRRect);
    var path = Path.combine(PathOperation.difference, path1, path2);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => oldDelegate != this;
}
