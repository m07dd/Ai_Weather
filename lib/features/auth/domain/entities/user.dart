import 'package:firebase_auth/firebase_auth.dart';

class Userr {
  final String uid;
  final String email;
  final String username;
  Userr({required this.uid, required this.email, required this.username});

  factory Userr.fromFirebase(User user) {
    return Userr(uid: user.uid, email: user.email!, username: 'username');
  }
}
