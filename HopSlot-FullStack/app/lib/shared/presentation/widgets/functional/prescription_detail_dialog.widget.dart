import 'package:app/main/domain/entities/prescription/prescription.model.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class PrescriptionDetailAlertDialog extends StatelessWidget {
  const PrescriptionDetailAlertDialog({
    super.key,
    required this.value,
    required this.controller,
    this.onDismiss,
    this.actions,
  });

  final Prescription value;
  final FlashController controller;
  final Function()? onDismiss;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16.r)),
        side: const BorderSide(),
      ),
      contentPadding: EdgeInsets.only(
          left: 24.0.w, top: 16.0.h, right: 24.0.w, bottom: 16.0.h),
      title: Text(DateFormatter.formatDateTime(value.issueDate)).headline2(),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(value.body).body1(),
          Gap(8.h),
          Text("Other Notes: ${value.otherNotes}").body1(),
          Gap(8.h),
          Text("Signed By: ${value.docSign}").body1(),
          Gap(8.h),
          Text("Attached: ${value.reports.length} report").body1(),
        ],
      ),
      actions: [
        ...actions ?? [],
        TextButton(
          onPressed: () async {
            controller.dismiss();
            onDismiss?.call();
          },
          child: const Text('Close').body2(),
        ),
      ],
    );
  }
}
