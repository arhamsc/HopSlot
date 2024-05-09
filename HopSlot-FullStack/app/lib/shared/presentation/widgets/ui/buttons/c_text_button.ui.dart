import 'package:flutter/material.dart';

class CTextButton extends StatelessWidget {
  const CTextButton({
    super.key,
    required this.buttonText,
    this.onPressed,
  });

  final String buttonText;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(buttonText));
  }
}
