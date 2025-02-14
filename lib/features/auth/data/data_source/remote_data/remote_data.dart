import 'package:firebase_auth/firebase_auth.dart';
import 'package:task1/core/errors/exceptions.dart';
import 'package:task1/features/auth/domain/entities/user.dart';

import 'package:cloud_firestore/cloud_firestore.dart'; // Import Firestore

abstract class AuthRemoteDataSource {
  Future<Userr> signIn(String email, String password);
  Future<Userr> signUp(
      String email, String password, String username); // Add username parameter
  Future<void> signOut();
  Future<Userr> getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Future<Userr> signIn(String email, String password) async {
    try {
      final userCredential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return Userr.fromFirebase(userCredential.user!);
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.message ?? 'Failed to sign in');
    }
  }

  @override
  Future<Userr> signUp(String email, String password, String username) async {
    try {
      final userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _firestore
          .collection('displayName')
          .doc(userCredential.user!.uid)
          .set({
        'email': email,
        'username': username,
      });

      return Userr.fromFirebase(userCredential.user!);
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.message ?? 'Failed to sign up');
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _firebaseAuth.signOut();
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.message ?? 'Failed to sign out');
    }
  }

  @override
  Future<Userr> getCurrentUser() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user != null) {
        // Fetch user data from Firestore
        final userDoc =
            await _firestore.collection('users').doc(user.uid).get();
        final userData = userDoc.data();

        return Userr(
          uid: user.uid,
          email: user.email!,
          username: userData?['username'] ??
              'No username', // Fetch username from Firestore
        );
      } else {
        throw ServerException('No user logged in');
      }
    } on FirebaseAuthException catch (e) {
      throw ServerException(e.message ?? 'Failed to fetch current user');
    }
  }
}
