import 'package:app/main/domain/entities/appointment_detail/appointment_detail.model.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/ui/typography/headline.typo.dart';
import 'package:app/utils/date_formatter.util.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AppointmentDetailAlertDialog extends StatelessWidget {
  const AppointmentDetailAlertDialog({
    super.key,
    required this.value,
    required this.controller,
    this.onDismiss,
    this.actions,
  });

  final AppointmentDetail value;
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
      title: Text(DateFormatter.formatDateTime(value.appointmentStart))
          .headline2(),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Patient Name: ${value.patient.firstName} ${value.patient.lastName}")
              .body1(),
          Gap(8.h),
          Text("Doctor Name: ${value.doctor.firstName} ${value.doctor.lastName}")
              .body1(),
          Gap(8.h),
          Text("Hospital Name: ${value.hospital.name}").body1(),
          Gap(8.h),
          Text("Appointment Start Time: ${DateFormatter.formatDateTime(value.appointmentStart)}")
              .body1(),
          Gap(8.h),
          Text("Status: ${value.status}").body1(),
          Gap(8.h),
          Text("Delay: ${value.additionalDelay} minutes").body1(),
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
