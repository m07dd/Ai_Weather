import 'package:task1/core/usecases/usecase.dart';
import 'package:task1/features/auth/domain/entities/user.dart';
import 'package:task1/features/auth/domain/repositories/Auth_repo.dart';

class GetCurrentUserUseCase implements UseCase<Userr, NoParams> {
  // Updated return type
  final AuthRepository repository;

  GetCurrentUserUseCase({required this.repository});

  @override
  Future<Userr> call(NoParams params) async {
    return await repository.getCurrentUser();
  }
}
