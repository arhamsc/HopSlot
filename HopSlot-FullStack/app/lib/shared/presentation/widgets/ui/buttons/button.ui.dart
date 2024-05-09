import 'package:app/shared/presentation/widgets/utility/styles/button_styles.dart';
import 'package:app/shared/presentation/widgets/utility/styles/variants.dart';
import 'package:flutter/material.dart';

class CButton extends StatelessWidget {
  const CButton({
    super.key,
    required this.buttonText,
    this.variant = ButtonVariants.primary,
    this.size = SizeVariants.xl,
    this.onPressed,
  });

  final String buttonText;
  final ButtonVariants variant;
  final SizeVariants size;
  final void Function()? onPressed;

  ButtonStyle? buttonStyle(context) {
    final style = switch (variant) {
      ButtonVariants.primary => ButtonStyles.primaryButton(context, size: size),
      ButtonVariants.secondary =>
        ButtonStyles.secondaryButton(context, size: size),
      ButtonVariants.inverted =>
        ButtonStyles.invertedButton(context, size: size),
    };
    return style;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: buttonStyle(context),
      onPressed: onPressed,
      child: Text(
        buttonText,
      ),
    );
  }
}
