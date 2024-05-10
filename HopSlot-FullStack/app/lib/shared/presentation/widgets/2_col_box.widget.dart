import 'package:app/core/theme/palette.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Col2Box extends StatelessWidget {
  const Col2Box({
    super.key,
    required this.title1,
    required this.title2,
    required this.child,
    this.height,
    this.expandHeight,
  });

  final String title1, title2;
  final Widget child;
  final double? height;
  final bool? expandHeight;

  @override
  Widget build(BuildContext context) {
    assert(
      !(height != null && expandHeight != null),
      "Either height or expandHeight must be provided",
    );

    final palette = Theme.of(context).extension<Palette>();
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: palette?.quaternary?.withOpacity(0.35),
      ),
      clipBehavior: Clip.hardEdge,
      height: expandHeight != null && expandHeight! ? null : (height ?? 200.h),
      child: Column(
        children: [
          Container(
            color: palette?.quaternary?.withOpacity(0.5),
            padding: EdgeInsets.symmetric(horizontal: 35.w, vertical: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title1).body2(),
                Text(title2).body2(),
              ],
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
