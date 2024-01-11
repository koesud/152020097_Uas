import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/navbar_screen/bottom_navbar.dart';
import 'package:pemmob_app/screens/sign_up/sign_up_screen.dart';
import 'package:pemmob_app/utils/Utils.dart';
import 'package:pemmob_app/utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/navbar_screen/bottom_navbar.dart';
import 'package:pemmob_app/screens/sign_up/sign_up_screen.dart';
import 'package:pemmob_app/utils/constants.dart';

class Login2Screen extends StatefulWidget {
  const Login2Screen({super.key});

  @override
  State<Login2Screen> createState() => _Login2ScreenState();
}

class _Login2ScreenState extends State<Login2Screen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _passwordVisible = true;

// class Login2Screen extends StatefulWidget {
//   const Login2Screen({super.key});

//   @override
//   State<Login2Screen> createState() => _Login2ScreenState();
// }

// class _Login2ScreenState extends State<Login2Screen> {
//   FirebaseAuth _auth = FirebaseAuth.instance;

//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();

//   bool visible = false;

//   _checkLogin(String? valueUser, String? valuePass) async {
//     setState(() {
//       visible = true;
//     });

//     Future<void> _showAlertDialog(
//         BuildContext context, String errorMessage) async {
//       return showDialog<void>(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: const Text('Error'),
//             content: Text(errorMessage),
//             actions: <Widget>[
//               TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child: const Text('OK'),
//               ),
//             ],
//           );
//         },
//       );
//     }

//     try {
//       UserCredential userCredential = await _auth.signInWithEmailAndPassword(
//         email: valueUser!,
//         password: valuePass!,
//       );

//       if (userCredential.user != null) {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => const BottomNavbar()),
//         );
//       }
//     } on FirebaseAuthException catch (e) {
//       if (e.code == 'user-not-found' || e.code == 'wrong-password') {
//         _showAlertDialog(context, 'Email atau Password Salah');
//       } else if (e.code == 'invalid-email') {
//         _showAlertDialog(context, 'Format Email Salah');
//       }
//     } catch (e) {
//       print(e.toString());
//       _showAlertDialog(context, 'Terjadi Kesalahan');
//     }
//   }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/images/login_bg.png'),
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.2), BlendMode.dstATop),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Image.asset(
                'assets/images/logo_black.png',
                height: 250.0,
                width: 250.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextField(
                controller: emailController,
                autofocus: false,
                enableInteractiveSelection: true,
                // style: const TextStyle(
                //   fontFamily: 'Work Sans',
                //   color: kTextColorBlack,
                //   fontSize: 16,
                // ),
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
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
                  hintText: "Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: TextField(
                controller: passwordController,
                obscureText: !_passwordVisible,
                enableInteractiveSelection: true,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: kPrimaryColor,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                  filled: true,
                  fillColor: Colors.white,
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
                  hintText: "Password",
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
                onPressed: signIn,

                // _checkLogin(
                //     _usernameController.text, _passwordController.text);

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
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: kPrimaryColor,
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
                        color: kPrimaryColor,
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

  Future signIn() async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
    } on FirebaseAuthException catch (e) {
      print(e);

      Utils.showSnackBar(e.message);
    }
  }
}
