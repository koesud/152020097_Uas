import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/home_screen/bmi_calculator/input_page.dart';
import 'package:pemmob_app/screens/home_screen/parsing_data/parsing_data.dart';
import 'package:pemmob_app/utils/constants.dart';

import 'basic_calculator/calculator.dart';

class MenuMathScreen extends StatefulWidget {
  const MenuMathScreen({super.key});

  @override
  State<MenuMathScreen> createState() => _MenuMathScreenState();
}

class _MenuMathScreenState extends State<MenuMathScreen> {
  final List menuMath = [
    "Body Mass Index",
    "Currency Converter",
    "Basic Calculator",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kMainBackgroundColor,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'What do you working on?',
                    style: TextStyle(
                        color: kTextColorBlack,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   itemBuilder: (context, index) {
            //     return Card(
            //       child: ListTile(
            //         onTap: () {
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => const InputPage()));
            //         },
            //         title: Text(menuMath[index],
            //             style: const TextStyle(
            //                 fontSize: 26,
            //                 fontFamily: 'Work Sans',
            //                 fontWeight: FontWeight.w600)),
            //         subtitle: Text('Tap to open ' + menuMath[index]),
            //         leading: const CircleAvatar(
            //           child: Icon(Icons.open_in_full),
            //         ),
            //       ),
            //     );
            //   },
            //   itemCount: menuMath.length,
            // ),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InputPage()));
                    },
                    title: const Text(
                      "Body Mass Index",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text("Click here to calculate your BMI."),
                    leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/icons/body-mass-index.png")),
                    trailing: const Icon(Icons.star)),
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ParsingPage()));
                    },
                    title: const Text(
                      "Currency Converter",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text("Click here to converte your money."),
                    leading: const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/icons/exchange.png")),
                    trailing: const Icon(Icons.lock_clock)),
                ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Calculator()));
                    },
                    title: const Text(
                      "Basic Calculator",
                      style: TextStyle(
                          fontFamily: "Work Sans",
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: const Text("Click here to open calculator."),
                    leading: const CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/math.png")),
                    trailing: const Icon(Icons.calculate)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
