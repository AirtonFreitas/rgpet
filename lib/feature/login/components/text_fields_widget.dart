import 'package:flutter/material.dart';
import 'package:rgpet/configs/utils/colors_utils.dart';

class TextFieldRgPet extends StatelessWidget {
  const TextFieldRgPet(
      {Key? key,
      required this.hint,
      required this.obscureText,
      required this.iconSufix,
      required this.controller,
      this.textSuffix,
      this.onChanged,
      this.onPressedObscure})
      : super(key: key);

  final String hint;
  final String? textSuffix;
  final Icon iconSufix;
  final bool obscureText;
  final Function(String)? onChanged;
  final Function()? onPressedObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      cursorColor: ColorsUtil.green,
      decoration: InputDecoration(
        suffixText: textSuffix,
        labelText: hint,
        suffixIcon: IconButton(
            onPressed: onPressedObscure,
            icon: iconSufix,
            color: ColorsUtil.green),
        labelStyle: const TextStyle(
            fontFamily: 'AnimalsHouse',
            fontSize: 24,
            color: greenPrimaryPalette),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 0.7, color: greenPrimaryPalette),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(width: 0.7, color: greenPrimaryPalette),
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
    );
  }
}
