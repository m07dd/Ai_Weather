import 'package:task1/core/usecases/usecase.dart';
import 'package:task1/features/auth/domain/entities/user.dart';
import 'package:task1/features/auth/domain/repositories/Auth_repo.dart';

class SignUpUseCase implements UseCase<Userr, SignUpParams> {
  // Updated return type
  final AuthRepository repository;

  SignUpUseCase({required this.repository});

  @override
  Future<Userr> call(SignUpParams params) async {
    // Updated return type
    return await repository.signUp(
        params.email, params.password, params.username);
  }
}

class SignUpParams {
  final String email;
  final String password;
  final String username;
  SignUpParams(
      {required this.email, required this.password, required this.username});
}
