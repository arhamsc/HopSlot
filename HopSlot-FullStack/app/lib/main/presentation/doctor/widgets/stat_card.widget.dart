import 'package:app/core/theme/palette.dart';
import 'package:app/core/theme/typography.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/title.typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class StatCard extends StatelessWidget {
  const StatCard({super.key, required this.label, required this.stat});

  final String label, stat;

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<Palette>();
    final typo = Theme.of(context).extension<CTypography>();
    return Container(
      height: 250.h,
      width: 250.h,
      decoration: BoxDecoration(
        color: palette?.secondary,
        borderRadius: BorderRadius.circular(32.r),
      ),
      padding: EdgeInsets.symmetric(
        vertical: 40.h,
        horizontal: 48.w,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(label).headline2(color: palette?.primary),
          Gap(48.h),
          Text(
            stat,
            style: typo?.title1?.copyWith(
              fontSize: 48.sp,
              color: palette?.primary,
            ),
          ),
        ],
      ),
    );
  }
}
