import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth auth = FirebaseAuth.instance; // 

  // Create a new user account 
  Future<UserCredential> signUp(String email, String password) {
    return auth.createUserWithEmailAndPassword(email: email, password: password);
  }

  // Sign in to an existing account 
  Future<UserCredential> signIn(String email, String password) {
    return auth.signInWithEmailAndPassword(email: email, password: password);
  }

  // Monitor auth state changes
  void monitorAuthState() {
    auth.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User signed out'); 
      } else {
        print('User signed in: ${user.uid}'); 
      }
    });
  }
}