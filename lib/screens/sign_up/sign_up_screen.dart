// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pemmob_app/utils/constants.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 10, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/sign-up.png',
                    height: 250.0,
                    width: 250.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 30,
                bottom: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    'Sign up.',
                    style: TextStyle(
                      fontFamily: 'MonumentExtended',
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: kTextColorBlack,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                autofocus: true,
                enableInteractiveSelection: true,
                style: TextStyle(
                  fontFamily: 'Work Sans',
                  color: kTextColorBlack,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kFieldFillColor,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: kPrimaryColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: kPrimaryColor,
                    ),
                  ),
                  hintText: "username",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                autofocus: true,
                enableInteractiveSelection: true,
                style: TextStyle(
                  fontFamily: 'Work Sans',
                  color: kTextColorBlack,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kFieldFillColor,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: kPrimaryColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: kPrimaryColor,
                    ),
                  ),
                  hintText: "Full name",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                autofocus: true,
                enableInteractiveSelection: true,
                style: TextStyle(
                  fontFamily: 'Work Sans',
                  color: kTextColorBlack,
                  fontSize: 16,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: kFieldFillColor,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: kPrimaryColor,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1.5,
                      color: kPrimaryColor,
                    ),
                  ),
                  hintText: "Mobile phone number",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              child: Text(
                'By signing up, you are agree to our Terms & Conditions and Privacy Policy',
                style: TextStyle(
                    color: kTextColorBlack,
                    fontFamily: 'Work Sans',
                    fontSize: 12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 30,
                right: 30,
                top: 20,
                bottom: 0,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                  minimumSize: const Size.fromHeight(50),
                ),
                onPressed: () {},
                child: const Text(
                  'Log in',
                  style: TextStyle(
                    fontFamily: 'Work Sans',
                    fontSize: 16,
                    color: Color(0xFFFFFFFD),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
