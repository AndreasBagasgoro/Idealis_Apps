import 'package:flutter/material.dart';
import '../../domain/usecases/login_usecase.dart';
import '../../domain/usecases/register_usecase.dart';
import '../../domain/usecases/logout_usecase.dart';
import '../../domain/entities/user.dart';

class AuthProvider with ChangeNotifier {
  final LoginUseCase loginUseCase;
  final RegisterUseCase registerUseCase;
  final LogoutUseCase logoutUseCase;

  AuthProvider(this.loginUseCase, this.registerUseCase, this.logoutUseCase);

  User? _user;
  bool _isLoading = false;

  User? get user => _user;
  bool get isLoading => _isLoading;

  Future<void> login(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    _user = await loginUseCase(email, password);
    _isLoading = false;
    notifyListeners();
  }

  Future<void> register(String email, String password, String firstName, String lastName) async {
    _isLoading = true;
    notifyListeners();
    _user = await registerUseCase(email, password, firstName, lastName);
    _isLoading = false;
    notifyListeners();
  }

  Future<void> logout() async {
    await logoutUseCase();
    _user = null;
    notifyListeners();
  }
}
