import 'package:task1/core/usecases/usecase.dart';
import 'package:task1/features/auth/domain/entities/user.dart';
import 'package:task1/features/auth/domain/repositories/Auth_repo.dart';

class SignInUseCase implements UseCase<Userr, SignInParams> {
  // Updated return type
  final AuthRepository repository;

  SignInUseCase({required this.repository});

  @override
  Future<Userr> call(SignInParams params) async {
    // Updated return type
    return await repository.signIn(params.email, params.password);
  }
}

class SignInParams {
  final String email;
  final String password;

  SignInParams({required this.email, required this.password});
}
