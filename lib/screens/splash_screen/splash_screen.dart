import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/opening_screen/opening_screen.dart';
import 'package:pemmob_app/utils/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const OpeningScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              kPrimaryColor,
              kSubBackgroundColor,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 250.0,
              width: 250.0,
            ),
            const SizedBox(
              height: 60,
            ),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
