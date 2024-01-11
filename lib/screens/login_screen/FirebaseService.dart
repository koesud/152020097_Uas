import 'package:firebase_auth/firebase_auth.dart';

class FirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Fungsi untuk melakukan login dengan email dan password
  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredential.user;
    } catch (e) {
      print('Error while signing in: $e');
      return null;
    }
  }

  // Fungsi untuk melakukan logout
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Error while signing out: $e');
    }
  }

  // Fungsi untuk mendapatkan informasi pengguna yang sedang login
  User? getCurrentUser() {
    try {
      return _auth.currentUser;
    } catch (e) {
      print('Error getting current user: $e');
      return null;
    }
  }

  // Fungsi lain yang diperlukan untuk berinteraksi dengan Firebase
}
