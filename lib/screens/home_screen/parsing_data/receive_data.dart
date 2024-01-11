import 'package:flutter/material.dart';
import 'package:pemmob_app/utils/constants.dart';

class PassingPage extends StatelessWidget {
  const PassingPage({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSubBackgroundColor,
        title: const Text(
          'Data Received',
          style: TextStyle(
              color: kTextColorBlack,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Center(
        child: Text(
          text,
          style: const TextStyle(
              fontFamily: 'Work Sans',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: kTextColorBlack),
        ),
      ),
    );
  }
}
