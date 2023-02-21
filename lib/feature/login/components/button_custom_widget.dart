import 'package:flutter/material.dart';

class ButtonCustomWidget extends StatelessWidget {
  const ButtonCustomWidget({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.widthButton,
    this.onPressed,
    required this.borderColor,
  }) : super(key: key);

  final Function()? onPressed;
  final String label;
  final Color? backgroundColor;
  final Color? textColor;
  final Color borderColor;
  final int widthButton;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        width: MediaQuery.of(context).size.width / widthButton,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: const BorderRadius.all(Radius.circular(16)),
            border: Border.all(color: borderColor)),
        child: Text(
          label.toUpperCase(),
          textAlign: TextAlign.center,
          style: TextStyle(
              color: textColor, fontFamily: 'AnimalsHouse', fontSize: 22),
        ),
      ),
    );
  }
}
