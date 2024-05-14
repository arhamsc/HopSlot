import 'package:app/shared/presentation/widgets/utility/styles/input_stypes.dart';
import 'package:app/shared/presentation/widgets/utility/styles/variants.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class CTextField extends StatelessWidget {
  const CTextField({
    super.key,
    required this.formControlName,
    required this.placeholder,
    this.variant = InputTextFieldVariants.primary,
    this.size = SizeVariants.xl,
    this.otherValidationMessages,
    this.obscureText,
    this.maxLines,
  });

  final String formControlName;
  final String placeholder;
  final InputTextFieldVariants variant;
  final SizeVariants size;
  final Map<String, String Function(Object)>? otherValidationMessages;
  final bool? obscureText;
  final int? maxLines;

  InputDecoration _inputDecoration(BuildContext context) {
    return switch (variant) {
      InputTextFieldVariants.primary => InputStyles.primaryText(context),
      InputTextFieldVariants.inverted => InputStyles.invertedText(context),
    };
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      formControlName: formControlName,
      decoration: _inputDecoration(context).copyWith(
        hintText: placeholder,
        labelText: placeholder,
      ),
      maxLines: obscureText == null && maxLines != null ? maxLines : 1,
      obscureText:
          obscureText != null && maxLines == null ? obscureText! : false,
    );
  }
}
