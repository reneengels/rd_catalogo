import 'package:flutter/material.dart';
import 'package:rd_catalogo/themes/app_theme.dart';
import 'package:rd_catalogo/themes/app_typography.dart';

class FormItem extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final String? Function(String? input) validator;

  const FormItem({
    super.key,
    required this.text,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          style: AppTypography.body1.copyWith(
            color: context.theme.appColors.onBackground,
          ),
          validator: (value) => validator(value),
          decoration: InputDecoration(
            labelText: text,
            labelStyle: AppTypography.body1.copyWith(
              color: context.theme.appColors.onSurface,
            ),
            hintText: 'Insira o $text',
            hintStyle: AppTypography.body1.copyWith(
              color: context.theme.appColors.onSurface,
            ),
            focusColor: context.theme.appColors.secondary,
            enabledBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: context.theme.appColors.onSurface,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: context.theme.appColors.secondary,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: context.theme.appColors.error,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(
                color: context.theme.appColors.error,
              ),
            ),
            floatingLabelStyle: AppTypography.body1.copyWith(
              color: context.theme.appColors.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
