import 'package:task1/features/auth/domain/entities/user.dart';

abstract class AuthRepository {
  Future<Userr> signIn(String email, String password); // Updated return type
  Future<Userr> signUp(
      String email, String password, String username); // Updated return type
  Future<void> signOut();
  Future<Userr> getCurrentUser(); // Updated return type
}
