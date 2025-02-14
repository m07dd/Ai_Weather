import 'package:task1/core/errors/exceptions.dart';
import 'package:task1/core/errors/failures.dart';
import 'package:task1/features/auth/data/data_source/remote_data/remote_data.dart';
import 'package:task1/features/auth/domain/entities/user.dart';
import 'package:task1/features/auth/domain/repositories/Auth_repo.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Userr> signIn(String email, String password) async {
    try {
      return await remoteDataSource.signIn(email, password);
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<Userr> signUp(String email, String password, String username) async {
    try {
      return await remoteDataSource.signUp(email, password, username);
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<void> signOut() async {
    try {
      return await remoteDataSource.signOut();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }

  @override
  Future<Userr> getCurrentUser() async {
    try {
      return await remoteDataSource.getCurrentUser();
    } on ServerException catch (e) {
      throw ServerFailure(e.message);
    }
  }
}
