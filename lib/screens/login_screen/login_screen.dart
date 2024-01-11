import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/navbar_screen/bottom_navbar.dart';
import 'package:pemmob_app/screens/sign_up/sign_up_screen.dart';
import 'package:pemmob_app/utils/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  late String username = 'kusdnar';
  late String password = 'kusdnar123';

  bool visible = false;

  _checkLogin(String? valueUser, String? valuePass) async {
    setState(() {
      visible = true;
    });

    String textUser = valueUser!;
    String textPass = valuePass!;

    if (username == textUser && password == textPass) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const BottomNavbar()));
    } else {
      _showAlertDialog(context, 'Username atau Password Salah');
    }
  }

  _showAlertDialog(BuildContext context, String valueError) {
    Widget okButton = FloatingActionButton(
      onPressed: () => Navigator.pop(context),
      child: const Text('OK'),
    );

    AlertDialog alert = AlertDialog(
      title: const Text('Error'),
      content: Text(valueError),
      actions: [
        okButton,
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 150.0,
                  width: 150.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: TextField(
                controller: _usernameController,
                autofocus: true,
                enableInteractiveSelection: true,
                style: const TextStyle(
                  fontFamily: 'Work Sans',
                  color: kTextColorBlack,
                  fontSize: 16,
                ),
                decoration: const InputDecoration(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                enableInteractiveSelection: true,
                style: const TextStyle(
                  fontFamily: 'Work Sans',
                  color: kTextColorBlack,
                  fontSize: 16,
                ),
                decoration: const InputDecoration(
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
                  hintText: "password",
                ),
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
                onPressed: () {
                  _checkLogin(
                      _usernameController.text, _passwordController.text);
                },
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: kTextColorBlack,
                        fontFamily: 'Work Sans',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: kTextColorBlack,
                      fontFamily: 'Work Sans',
                      fontSize: 12,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpScreen()));
                    },
                    child: const Text(
                      'Sign up.',
                      style: TextStyle(
                        color: kTextColorBlack,
                        fontFamily: 'Work Sans',
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
