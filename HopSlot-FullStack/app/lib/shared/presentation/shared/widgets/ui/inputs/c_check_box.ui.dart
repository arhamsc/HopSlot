import 'package:app/core/theme/palette.dart';
import 'package:app/shared/presentation/shared/widgets/ui/typography/body.typo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CCheckBox extends StatelessWidget {
  const CCheckBox({
    super.key,
    required this.formControlName,
    required this.label,
    this.otherValidationMessages,
  });

  final String formControlName;
  final String label;
  final Map<String, String Function(Object)>? otherValidationMessages;

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).extension<Palette>();
    return ReactiveCheckboxListTile(
      formControlName: formControlName,
      title: Text(label).body2(),
      secondary: Icon(
        Icons.settings,
        color: palette?.tertiary,
        size: 32.sp,
      ),
    );
  }
}
