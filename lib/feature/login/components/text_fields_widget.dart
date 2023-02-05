import 'package:flutter/material.dart';
import 'package:rgpet/configs/utils/colors_utils.dart';

class TextFieldRgPet extends StatelessWidget {
  const TextFieldRgPet(
      {Key? key,
      required this.hint,
      required this.obscureText,
      required this.textSuffix,
      required this.iconSufix})
      : super(key: key);

  final String hint;
  final String textSuffix;
  final Icon iconSufix;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          suffixText: textSuffix,
          labelText: hint,
          suffixIcon: iconSufix,
          suffixIconColor: Color.lerp(Colors.blue, Colors.red, 5),
          labelStyle: TextStyle(color: ColorsUtil.green),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.7, color: ColorsUtil.green),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 0.7, color: ColorsUtil.green),
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ));
  }
}
