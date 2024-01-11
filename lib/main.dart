import 'package:flutter/material.dart';
import 'package:pemmob_app/screens/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: 'AIzaSyDklaolqiw97LQ_cveA3nbk1YlZJ7LsurI',
        appId: '726382889964',
        messagingSenderId: '286237021275',
        projectId: 'pemob-kusdinnar'),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Math App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const SplashScreen(),
    );
  }
}
