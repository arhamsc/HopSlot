import 'package:app/core/theme/typography.dart';
import 'package:flutter/material.dart';

extension BodyTypography on Text {
  Text body1({bool isMedium = false, bool isBold = false, Color? color}) {
    final body1Typography = CTypography.cTypography;
    return Text(
      data ?? "No Data", // Retain original text data
      style: isMedium
          ? body1Typography.body1Medium?.copyWith(color: color).merge(style)
          : isBold
              ? body1Typography.body1Bold?.copyWith(color: color).merge(style)
              : body1Typography.body1?.copyWith(color: color).merge(style),
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      selectionColor: selectionColor,
      key: key,
      strutStyle: strutStyle,
      textHeightBehavior: textHeightBehavior,
      textScaler: textScaler,
    );
  }

  Text body2({bool isMedium = false, bool isBold = false, Color? color}) {
    final body2Typography = CTypography.cTypography;
    return Text(
      data ?? "No Data", // Retain original text data
      style: isMedium
          ? body2Typography.body2Medium?.copyWith(color: color).merge(style)
          : isBold
              ? body2Typography.body2Bold?.copyWith(color: color).merge(style)
              : body2Typography.body2?.copyWith(color: color).merge(style),
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      selectionColor: selectionColor,
      key: key,
      strutStyle: strutStyle,
      textHeightBehavior: textHeightBehavior,
      textScaler: textScaler,
    );
  }

  Text body3({bool isMedium = false, bool isBold = false, Color? color}) {
    final body3Typography = CTypography.cTypography;
    return Text(
      data ?? "No Data", // Retain original text data
      style: isMedium
          ? body3Typography.body3Medium?.copyWith(color: color).merge(style)
          : isBold
              ? body3Typography.body3Bold?.copyWith(color: color).merge(style)
              : body3Typography.body3?.copyWith(color: color).merge(style),
      textAlign: textAlign,
      textDirection: textDirection,
      locale: locale,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      selectionColor: selectionColor,
      key: key,
      strutStyle: strutStyle,
      textHeightBehavior: textHeightBehavior,
      textScaler: textScaler,
    );
  }
}
