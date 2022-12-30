import 'package:flutter/material.dart';
import 'package:delmart/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        iconSize: getSize(height ?? 0),
        padding: const EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll15:
        return getPadding(
          all: 15,
        );
      case IconButtonPadding.PaddingAll12:
        return getPadding(
          all: 12,
        );
      default:
        return getPadding(
          all: 8,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.OutlineIndigo50:
        return ColorConstant.whiteA700;
      case IconButtonVariant.FillDeeporange50063:
        return ColorConstant.deepOrange50063;
      case IconButtonVariant.OutlineDeeporange500:
        return ColorConstant.deepOrange500;
      case IconButtonVariant.FillYellow100:
        return ColorConstant.yellow100;
      case IconButtonVariant.FillGreenA700:
        return ColorConstant.greenA700;
      case IconButtonVariant.FillRedA400:
        return ColorConstant.redA400;
      case IconButtonVariant.GradientDeeporange400Deeporange40001:
        return null;
      default:
        return null;
    }
  }

  _setBorder() {
    switch (variant) {
      case IconButtonVariant.OutlineIndigo50:
        return Border.all(
          color: ColorConstant.indigo50,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.OutlineDeeporange500:
        return Border.all(
          color: ColorConstant.deepOrange500,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case IconButtonVariant.GradientDeeporange400Deeporange40001:
      case IconButtonVariant.FillDeeporange50063:
      case IconButtonVariant.FillYellow100:
      case IconButtonVariant.FillGreenA700:
      case IconButtonVariant.FillRedA400:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.RoundedBorder7:
        return BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.OutlineIndigo50:
      case IconButtonVariant.FillDeeporange50063:
      case IconButtonVariant.OutlineDeeporange500:
      case IconButtonVariant.FillYellow100:
      case IconButtonVariant.FillGreenA700:
      case IconButtonVariant.FillRedA400:
        return null;
      default:
        return LinearGradient(
          begin: Alignment(
            0,
            0.5,
          ),
          end: Alignment(
            1.01,
            0.5,
          ),
          colors: [
            ColorConstant.deepOrange400,
            ColorConstant.deepOrange40001,
          ],
        );
    }
  }
}

enum IconButtonShape {
  RoundedBorder7,
  RoundedBorder12,
}

enum IconButtonPadding {
  PaddingAll8,
  PaddingAll15,
  PaddingAll12,
}

enum IconButtonVariant {
  GradientDeeporange400Deeporange40001,
  OutlineIndigo50,
  FillDeeporange50063,
  OutlineDeeporange500,
  FillYellow100,
  FillGreenA700,
  FillRedA400,
}
