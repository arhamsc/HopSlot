import 'package:app/core/theme/typography.dart';
import 'package:flutter/material.dart';

extension HeadlineTypography on Text {
  Text headline1({Color? color}) {
    final typography = CTypography.cTypography;
    return Text(
      data ?? "No Data", // Retain original text data
      style: typography.headline1?.copyWith(color: color).merge(style),
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

  Text headline2({Color? color}) {
    final typography = CTypography.cTypography;
    return Text(
      data ?? "No Data", // Retain original text data
      style: typography.headline2?.copyWith(color: color).merge(style),
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
