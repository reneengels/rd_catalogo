import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class ButtonWithArrow extends StatelessWidget {
  final String text;
  final VoidCallback callback;

  const ButtonWithArrow(
    this.text,
    this.callback, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          context.theme.appColors.primary,
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
          ),
        ),
      ),
      onPressed: () => callback(),
      child: SizedBox(
        width: 220,
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: AppTypography.h2.copyWith(
                color: context.theme.appColors.onPrimary,
              ),
            ),
            const SizedBox(width: 10),
            Icon(
              Icons.arrow_forward_rounded,
              color: context.theme.appColors.onPrimary,
              size: 26,
            ),
          ],
        ),
      ),
    );
  }
}
