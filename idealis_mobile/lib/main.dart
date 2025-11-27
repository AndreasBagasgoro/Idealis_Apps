import 'package:flutter/material.dart';
import 'package:idealis_mobile/features/auth/domain/usecases/login_usecase.dart';
import 'package:idealis_mobile/features/auth/domain/usecases/register_usecase.dart';
import 'package:idealis_mobile/features/auth/domain/usecases/logout_usecase.dart';
// import 'package:idealis_mobile/features/auth/domain/repositories/auth_repository.dart';
import 'package:idealis_mobile/features/auth/data/data_sources/auth_local_datasource.dart';
import 'package:idealis_mobile/features/auth/data/data_sources/auth_remote_datasource.dart';
import 'package:idealis_mobile/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:provider/provider.dart';

import 'features/auth/presentation/providers/auth_provider.dart';

import 'features/auth/presentation/pages/login_page.dart';
import 'features/auth/presentation/pages/register_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
  Provider.debugCheckInvalidValueType = null;
  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;

  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    final remoteDataSource = AuthRemoteDataSource();  // e.g., AuthRemoteDataSource(apiClient)
    final localDataSource = AuthLocalDataSource(); 

    final authRepository = AuthRepositoryImpl(remoteDataSource, localDataSource);  
    return Provider<AuthProvider>(  // Provide AuthProvider here
      create: (_) => AuthProvider(
        LoginUseCase(authRepository),    // Pass LoginUseCase
        RegisterUseCase(authRepository), // Pass RegisterUseCase
        LogoutUseCase(authRepository),
      ),  // Initialize your AuthProvider
      child: MaterialApp(
        title: 'Idealis Mobile',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: isLoggedIn ? RegisterPage() : LoginPage(),
        routes: {
          '/login': (context) => LoginPage(),
          '/register': (context) => RegisterPage(),
    
        }
      ),
    );
  }
}
