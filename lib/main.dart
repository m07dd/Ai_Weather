import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task1/features/auth/data/data_source/remote_data/remote_data.dart';
import 'package:task1/features/auth/data/repositories/Impl_Repo.dart';
import 'package:task1/features/auth/domain/UseCases/get_current_user_use_case.dart';
import 'package:task1/features/auth/domain/UseCases/sign_up_use_case.dart';
import 'package:task1/features/auth/domain/usecases/sign_in_use_case.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:task1/features/auth/presentation/Screens/scn1.dart';
import 'package:task1/features/auth/presentation/controller/providers.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Ai_Weather());
}

class Ai_Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(
            signInUseCase: SignInUseCase(
              repository: AuthRepositoryImpl(
                remoteDataSource: AuthRemoteDataSourceImpl(),
              ),
            ),
            signUpUseCase: SignUpUseCase(
              repository: AuthRepositoryImpl(
                remoteDataSource: AuthRemoteDataSourceImpl(),
              ),
            ),
            getCurrentUserUseCase: GetCurrentUserUseCase(
              repository: AuthRepositoryImpl(
                remoteDataSource: AuthRemoteDataSourceImpl(),
              ),
            ),
          ),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Auth App',
        home: WelcomePage(),
      ),
    );
  }
}
