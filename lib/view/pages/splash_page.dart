import 'package:flutter/material.dart';
import 'package:slicing/shared/theme.dart';
import 'package:slicing/view/pages/sign_in_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const SignIn()),
            (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: Container(
        alignment: Alignment.center,
        child: const Icon(
          Icons.access_alarm,
          size: 24,
        ),
      ),
    );
  }
}
