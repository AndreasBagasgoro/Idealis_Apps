class AppConstants {
  // App Info
  static const String appName = 'Idealis';
  static const String appVersion = '1.0.0';

  // API Configuration
  static const String baseUrl = 'http://localhost:3000/api';
  static const String apiVersion = 'v1';

  // Storage Keys
  static const String tokenKey = 'auth_token';
  static const String userKey = 'user_data';
  static const String languageKey = 'app_language';
  static const String themeKey = 'app_theme';

  // Network
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);

  // Validation
  static const int minPasswordLength = 8;
  static const int maxPasswordLength = 50;
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 30;

  // Pagination
  static const int defaultPageSize = 10;
  static const int maxPageSize = 100;

  // Image
  static const double maxImageSizeMB = 5.0;
  static const List<String> allowedImageTypes = ['jpg', 'jpeg', 'png', 'gif'];

  // Animation
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);
  static const Duration fastAnimationDuration = Duration(milliseconds: 150);
  static const Duration slowAnimationDuration = Duration(milliseconds: 500);
}
