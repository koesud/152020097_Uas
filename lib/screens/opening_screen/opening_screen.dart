import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/login_screen/login2.dart';

import 'package:pemmob_app/utils/constants.dart';

class OpeningScreen extends StatefulWidget {
  const OpeningScreen({super.key});

  @override
  State<OpeningScreen> createState() => _OpeningScreenState();
}

class _OpeningScreenState extends State<OpeningScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSubBackgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 75,
              left: 25,
              bottom: 0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'GET STARTED',
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
          Padding(
            padding:
                const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
            child: Image.asset(
              'assets/images/after_splash.png',
              height: 400.0,
              width: 400.0,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 10,
            ),
            child: Text(
              'This apps help you to solve all of your Math problems.',
              style: TextStyle(
                fontFamily: 'MonumentExtended',
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: kTextColorBlack,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 25,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Login2Screen()),
                    );
                  },
                  child: const Text(
                    'Get Started >',
                    style: TextStyle(
                      fontFamily: 'MonumentExtended',
                      fontSize: 12,
                      color: kTextColorBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
