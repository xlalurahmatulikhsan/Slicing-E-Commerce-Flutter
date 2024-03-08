import 'package:flutter/material.dart';
import 'package:slicing/view/pages/sign_up_page.dart';
import 'package:slicing/view/widgets/form_costum.dart';
import 'package:slicing/shared/theme.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldBgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Login',
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
                      'sign in to continue',
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
                    title: 'Email Addres',
                    hinText: 'Email@email.com',
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
                                  'Sign In',
                                  style: whiteTextStyle.copyWith(
                                      fontSize: 16, fontWeight: medium),
                                ))),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?',
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
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: const Text(
                      'Sign Up',
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
