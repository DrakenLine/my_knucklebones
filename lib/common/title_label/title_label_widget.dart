import 'package:flutter/material.dart';
import 'package:my_knucklebones/common/title_label/title_label_size_enum.dart';
import 'package:my_knucklebones/theme/app_theme_data.dart';
import 'package:my_knucklebones/theme/label.dart';

class TitleLabelWidget extends StatelessWidget {
  final String _title;
  final TitleLabelSize _size;

  const TitleLabelWidget({
    super.key,
    required String title,
    required TitleLabelSize size,
  })  : _title = title,
        _size = size;

  @override
  Widget build(BuildContext context) {
    const AppThemeData theme = AppThemeData();

    return Container(
      decoration: ShapeDecoration(
        shape: WeirdBorder(
          radius: _size == TitleLabelSize.small ? 10 : 15,
          borderWidth: 2,
          borderColor: theme.colors.black,
          fillColor: theme.colors.earthYellow,
        ),
        color: theme.colors.black,
        shadows: <BoxShadow>[
          BoxShadow(
            color: theme.colors.black,
            spreadRadius: 2,
            blurRadius: 0,
            offset: Offset(-4, 4),
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        decoration: ShapeDecoration(
          shape: WeirdBorder(
            radius: _size == TitleLabelSize.small ? 10 : 15,
            fillColor: theme.colors.earthYellow,
            borderColor: theme.colors.black,
            borderWidth: 2,
          ),
          color: theme.colors.black,
        ),
        child: _size == TitleLabelSize.small
            ? Label.titleLarge(_title)
            : Label.displayLarge(_title),
      ),
    );
  }
}

class WeirdBorder extends ShapeBorder {
  final double radius;
  final Color? fillColor;
  final double borderWidth;
  final Color? borderColor;

  const WeirdBorder({
    required this.radius,
    this.fillColor,
    this.borderWidth = 1.0,
    this.borderColor,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()
      ..fillType = PathFillType.evenOdd
      ..addPath(
        getOuterPath(rect, textDirection: textDirection ?? TextDirection.ltr),
        Offset.zero,
      );
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) =>
      _createPath(rect);

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    if (fillColor != null) {
      final Paint fillPaint = Paint()
        ..color = fillColor! // Use the provided fillColor
        ..style = PaintingStyle.fill;
      final Path fillPath = getInnerPath(rect, textDirection: textDirection);
      canvas.drawPath(fillPath, fillPaint);
    }

    if (borderColor != null) {
      final Paint borderPaint = Paint()
        ..color = borderColor!
        ..style = PaintingStyle.stroke
        ..strokeWidth = borderWidth;
      final Path borderPath = getOuterPath(rect, textDirection: textDirection);
      canvas.drawPath(borderPath, borderPaint);
    }
  }

  @override
  ShapeBorder scale(double t) => WeirdBorder(
        radius: radius,
      );

  Path _createPath(Rect rect) {
    // Inset the rect by the pathWidth so the border is inside the rect.
    Rect insetRect = rect.deflate(borderWidth);

    // The path for the 'ticket' shape
    Path path = Path();

    // The distance from the corner to start the curve for the inverted corners
    double inset = radius;

    // Move to the start point
    path.moveTo(insetRect.left + inset, insetRect.top);

    // Top line and top-right corner
    path.lineTo(insetRect.right - inset, insetRect.top);
    path.arcToPoint(
      Offset(insetRect.right, insetRect.top + inset),
      radius: Radius.circular(inset),
      clockwise: false,
    );

    // Right line and bottom-right corner
    path.lineTo(insetRect.right, insetRect.bottom - inset);
    path.arcToPoint(
      Offset(insetRect.right - inset, insetRect.bottom),
      radius: Radius.circular(inset),
      clockwise: false,
    );

    // Bottom line and bottom-left corner
    path.lineTo(insetRect.left + inset, insetRect.bottom);
    path.arcToPoint(
      Offset(insetRect.left, insetRect.bottom - inset),
      radius: Radius.circular(inset),
      clockwise: false,
    );

    // Left line and top-left corner
    path.lineTo(insetRect.left, insetRect.top + inset);
    path.arcToPoint(
      Offset(insetRect.left + inset, insetRect.top),
      radius: Radius.circular(inset),
      clockwise: false,
    );

    // Close the path
    path.close();

    return path;
  }
}
