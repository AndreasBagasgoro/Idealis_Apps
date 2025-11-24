# idealis_mobile

A new Flutter project.

## Getting Started

# Idealis Mobile

Aplikasi mobile Idealis yang dibangun menggunakan Flutter dengan arsitektur yang bersih dan terstruktur.

## 🚀 Fitur

- **Clean Architecture** - Struktur kode yang terorganisir dan mudah dimaintain
- **State Management** - Menggunakan Provider dan Riverpod
- **Navigation** - Go Router untuk navigasi yang efisien
- **Network Layer** - Dio untuk HTTP requests dengan interceptors
- **UI/UX** - Material Design 3 dengan custom theme
- **Authentication** - Login dan register screens
- **Responsive Design** - Mendukung berbagai ukuran layar

## 📋 Prerequisites

Pastikan Anda telah menginstall:
- [Flutter](https://flutter.dev/docs/get-started/install) (versi 3.7.2 atau lebih tinggi)
- [Dart](https://dart.dev/get-dart) (biasanya sudah included dengan Flutter)
- Android Studio atau VS Code dengan Flutter extension
- Android SDK untuk development Android
- Xcode untuk development iOS (khusus macOS)

## 🛠 Installation

1. Clone repository atau pastikan Anda berada di folder mobile project
2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Generate necessary files:
   ```bash
   flutter packages pub run build_runner build
   ```

4. Run the application:
   ```bash
   flutter run
   ```

## 🏗 Project Structure

```
lib/
├── core/
│   ├── config/          # App configuration dan routing
│   ├── constants/       # App constants, colors, text styles
│   ├── error/          # Error handling dan exceptions
│   ├── network/        # API client dan network layer
│   ├── services/       # App services
│   ├── theme/          # App theme dan styling
│   └── utils/          # Utility functions
├── features/
│   ├── auth/           # Authentication feature
│   │   ├── data/       # Data layer
│   │   ├── domain/     # Domain layer
│   │   └── presentation/ # UI layer
│   └── home/           # Home feature
│       └── presentation/ # UI screens
├── shared/
│   ├── providers/      # Shared providers
│   └── widgets/        # Reusable widgets
└── main.dart           # Entry point
```

## 📱 Screens yang Sudah Dibuat

### Authentication
- **Splash Screen** - Loading screen dengan animasi
- **Login Screen** - Form login dengan validasi
- **Register Screen** - Form registrasi dengan validasi

### Main App
- **Home Screen** - Dashboard utama dengan navigasi tab
- **Profile Tab** - Screen profil user
- **Explore Tab** - Screen untuk eksplorasi
- **Favorites Tab** - Screen favorit

## 🎨 Dependencies yang Sudah Ditambahkan

### UI & Navigation
- `go_router`: Navigation management
- `google_fonts`: Custom fonts
- `flutter_svg`: SVG support
- `cached_network_image`: Image caching
- `shimmer`: Loading animations
- `lottie`: Advanced animations

### State Management
- `provider`: Simple state management
- `riverpod`: Advanced state management
- `flutter_riverpod`: Flutter integration untuk Riverpod

### Network & Storage
- `dio`: HTTP client
- `shared_preferences`: Local storage
- `hive`: Local database
- `hive_flutter`: Flutter integration untuk Hive

### Forms & Validation
- `flutter_form_builder`: Form building
- `form_builder_validators`: Form validation

## 📝 Cara Install Dependencies

Jalankan command berikut untuk menginstall semua dependencies:
```bash
flutter pub get
```

## 🔧 Configuration

### Backend Integration
- **Base URL**: `http://localhost:3000/api` (configured di `app_constants.dart`)
- Update URL jika backend berjalan di port yang berbeda

## 🚧 Status Setup

✅ **Sudah Selesai:**
- Struktur folder lengkap
- Dependencies dalam pubspec.yaml
- Theme dan styling
- Screens dasar (Splash, Login, Register, Home)
- Custom widgets (CustomButton, CustomTextField)
- Network layer setup
- Constants dan configuration

⏳ **Perlu Dilakukan Selanjutnya:**
- Install dependencies dengan `flutter pub get`
- Test aplikasi dengan `flutter run`
- Implementasi logic backend integration
- Add proper error handling
- Implement state management

## 📄 License

Project ini menggunakan lisensi MIT.
