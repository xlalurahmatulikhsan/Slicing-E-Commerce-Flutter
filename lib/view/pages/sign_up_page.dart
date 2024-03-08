import 'package:flutter/material.dart';
import 'package:slicing/shared/theme.dart';
import 'package:slicing/view/pages/sign_in_page.dart';
import 'package:slicing/view/widgets/form_costum.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 24,
                            color: primaryTextColor,
                            fontWeight: medium,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Register and Happy Shoping',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: regular,
                              color: secondaryTextColor),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const FormCostum(
                        title: 'Full Name',
                        hinText: 'Your Full Name',
                        prefixIcon: Icon(
                          Icons.person,
                          color: primaryColor,
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const FormCostum(
                        title: 'Username',
                        hinText: 'Your Username',
                        prefixIcon: Icon(
                          Icons.person,
                          color: primaryColor,
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const FormCostum(
                        title: 'Email Address',
                        hinText: 'Your Email Address',
                        prefixIcon: Icon(
                          Icons.email,
                          color: primaryColor,
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const FormCostum(
                        title: 'Password',
                        hinText: 'Your Password',
                        prefixIcon: Icon(
                          Icons.lock,
                          color: primaryColor,
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  isLoading = true;
                                });
                                Future.delayed(const Duration(seconds: 2), () {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const SignIn()),
                                      (route) => false);
                                });
                              },
                              style: TextButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12))),
                              child: isLoading
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const SizedBox(
                                          height: 16,
                                          width: 16,
                                          child: CircularProgressIndicator(
                                            strokeWidth: 2.0,
                                            valueColor: AlwaysStoppedAnimation(
                                                Colors.white),
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
                                      'Sign Up',
                                      style: whiteTextStyle.copyWith(
                                          fontSize: 16, fontWeight: medium),
                                    ))),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: secondaryTextColor),
                  ),
                  const SizedBox(
                    width: 4.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
