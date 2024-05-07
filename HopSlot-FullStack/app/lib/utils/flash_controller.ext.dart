import 'dart:async';

import 'package:flash/flash.dart';
import 'package:flutter/widgets.dart';

extension FlashControllerExt on DefaultFlashController {
  DefaultFlashController copyWith({
    FlashBuilder? builder,
    Duration? transitionDuration,
    Duration? reverseTransitionDuration,
    Color? barrierColor,
    double? barrierBlur,
    bool? barrierDismissible,
    FutureOr<bool> Function()? onBarrierTap,
    Curve? barrierCurve,
    bool? persistent,
    VoidCallback? onRemoveFromRoute,
    Duration? duration,
  }) {
    return DefaultFlashController(
      context,
      builder: builder ?? this.builder,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      reverseTransitionDuration:
          reverseTransitionDuration ?? this.reverseTransitionDuration,
      barrierColor: barrierColor ?? this.barrierColor,
      barrierBlur: barrierBlur ?? this.barrierBlur,
      barrierDismissible: barrierDismissible ?? this.barrierDismissible,
      onBarrierTap: onBarrierTap ?? this.onBarrierTap,
      barrierCurve: barrierCurve ?? this.barrierCurve,
      persistent: persistent ?? this.persistent,
      onRemoveFromRoute: onRemoveFromRoute ?? this.onRemoveFromRoute,
      duration: duration ?? this.duration,
    );
  }
}
