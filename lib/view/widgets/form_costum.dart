import 'package:flutter/material.dart';
import 'package:slicing/shared/theme.dart';

class FormCostum extends StatelessWidget {
  final String title;
  final String hinText;
  final Widget? prefixIcon;

  const FormCostum(
      {super.key, required this.title, required this.hinText, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: regular, color: primaryTextColor),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: blackColor, borderRadius: BorderRadius.circular(12)),
          child: TextFormField(
            style: const TextStyle(color: primaryTextColor),
            decoration: InputDecoration(
                prefixIcon: prefixIcon,
                hintText: hinText,
                hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: regular,
                    color: secondaryTextColor),
                enabledBorder: InputBorder.none,
                border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
