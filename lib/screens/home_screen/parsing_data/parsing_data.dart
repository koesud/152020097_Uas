import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/home_screen/parsing_data/receive_data.dart';
import 'package:pemmob_app/utils/constants.dart';

class ParsingPage extends StatefulWidget {
  const ParsingPage({super.key});

  @override
  State<ParsingPage> createState() => _ParsingPageState();
}

class _ParsingPageState extends State<ParsingPage> {
  final TextEditingController _Controller = TextEditingController();
  void _sendTextValue(String value) {
    setState(() {
      String text = value;
    });
  }

  void _clearText() {
    _Controller.clear();
    setState(() {});
  }

  void _sendOtherScreen(BuildContext context) {
    String textSend = _Controller.text;
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PassingPage(text: textSend)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSubBackgroundColor,
        title: const Text(
          'Parsing',
          style: TextStyle(
              color: kTextColorBlack,
              fontFamily: 'Work Sans',
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _Controller,
              decoration: const InputDecoration(
                  contentPadding: EdgeInsets.all(8.0),
                  hintText: 'Type something...',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
              onChanged: (String value) {
                _sendTextValue(value);
              },
            ),
            Container(
              height: 10,
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
                onPressed: () {
                  _sendOtherScreen(context);
                  _clearText();
                },
                child: const Text(
                  'SEND',
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
