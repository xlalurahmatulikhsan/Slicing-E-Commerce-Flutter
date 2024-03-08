import 'package:flutter/material.dart';
import 'package:slicing/shared/theme.dart';

class ButtonCostum extends StatefulWidget {
  const ButtonCostum({super.key});
  @override
  State<ButtonCostum> createState() => _ButtonCostumState();
}

class _ButtonCostumState extends State<ButtonCostum> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: double.infinity,
        child: ElevatedButton(
            onPressed: () {
              setState(() {
                isLoading = true;
              });
              Future.delayed(const Duration(seconds: 2), () {
                setState(() {
                  isLoading = false;
                });
              });
            },
            style: TextButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12))),
            child: isLoading
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 16,
                        width: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.0,
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Loading',
                        style: whiteTextStyle.copyWith(
                            fontSize: 16, fontWeight: medium),
                      )
                    ],
                  )
                : Text(
                    'Sign In',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )));
  }
}
