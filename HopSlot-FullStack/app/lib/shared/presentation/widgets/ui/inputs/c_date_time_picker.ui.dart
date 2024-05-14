import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/shared/presentation/widgets/utility/styles/input_stypes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:reactive_date_time_picker/reactive_date_time_picker.dart';

class CDateTimePicker extends StatelessWidget {
  const CDateTimePicker(
      {super.key,
      required this.formControlName,
      required this.label,
      this.firstDate,
      this.lastDate,
      this.datePickerFieldType});

  final String formControlName, label;
  final DateTime? firstDate, lastDate;
  final ReactiveDatePickerFieldType? datePickerFieldType;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label).body1(),
        Gap(8.h),
        ReactiveDateTimePicker(
          formControlName: formControlName,
          decoration: InputStyles.primaryText(context),
          fieldLabelText: label,
          fieldHintText: label,
          helpText: label,
          firstDate: firstDate ?? DateTime.now(),
          lastDate: lastDate,
          timePickerEntryMode: TimePickerEntryMode.dialOnly,
          datePickerEntryMode: DatePickerEntryMode.calendarOnly,
          type: datePickerFieldType ?? ReactiveDatePickerFieldType.dateTime,
        ),
      ],
    );
  }
}
