# HelloMe Assessment

A Flutter application built with a feature-first architecture and multiple environment flavors for different deployment stages.

## 🏗️ Project Architecture

This project follows a **feature-first layered architecture** pattern, organizing code by business features rather than technical layers. Each feature is self-contained with its own presentation, business logic, and data layers.

### Directory Structure

```
lib/
├── src/
│   ├── core/                    # Shared utilities and configurations
│   │   ├── constants/          # App constants and configurations
│   │   ├── extensions/         # Dart extensions
│   │   ├── responsive_wrapper/ # Responsive design utilities
│   │   ├── router/            # Navigation and routing
│   │   └── theme/             # App theming and styling
│   └── features/               # Feature modules
│       ├── app/                # App-level configurations
│       ├── dashboard/          # Dashboard feature
│       └── send_money/         # Send money feature
│           ├── presentation/   # UI components and screens
│           │   ├── screens/    # Screen widgets
│           │   └── widgets/    # Reusable UI components
│           ├── domain/         # Business logic (if applicable)
│           └── data/           # Data sources (if applicable)
├── flavor_config.dart          # Environment configuration
├── main.dart                   # Production entry point
├── main_dev.dart              # Development entry point
└── hellome_app.dart           # App initialization
```

## 🚀 Getting Started

### Prerequisites

- Flutter SDK (latest stable version)
- Dart SDK
- Android Studio / VS Code
- Android SDK (for Android development)
- Xcode (for iOS development, macOS only)

### Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd hellome_assessment
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run the app:
```bash
# For development environment
flutter run --flavor dev -t lib/main_dev.dart

# For production environment
flutter run --flavor prod -t lib/main.dart
```

## 🌍 Environment Flavors

The project supports multiple environment flavors for different deployment stages:

### Available Flavors

- **`dev`** - Development environment
  - API: `dev-api.example.com`
  - Entry point: `lib/main_dev.dart`
  - Command: `flutter run --flavor dev -t lib/main_dev.dart`

- **`staging`** - Staging/Testing environment
  - API: `staging-api.example.com`
  - Entry point: `lib/main.dart` (with staging config)

- **`pilot`** - Pilot/Pre-production environment
  - API: `pilot-api.example.com`
  - Entry point: `lib/main.dart` (with pilot config)

- **`prod`** - Production environment
  - API: `api.example.com`
  - Entry point: `lib/main.dart`
  - Command: `flutter run --flavor prod -t lib/main.dart`

### Flavor Configuration

Flavor-specific configurations are managed in `lib/flavor_config.dart`:

```dart
enum Flavor { dev, staging, prod, pilot }

class FlavorConfig {
  static late Flavor appFlavor;
  
  static Uri get baseUri {
    switch (appFlavor) {
      case Flavor.prod:
        return Uri(host: 'api.example.com', ...);
      case Flavor.dev:
        return Uri(host: 'dev-api.example.com', ...);
      // ... other flavors
    }
  }
}
```

## 🎨 Features

### Core Features

- **Responsive Design** - Built with responsive design principles
- **Theme Support** - Light/dark theme support with custom theming
- **Navigation** - Centralized routing system
- **State Management** - Riverpod for state management

### Business Features

- **Dashboard** - Main application dashboard
- **Send Money** - Money transfer functionality with:
  - Currency rate tracking
  - Amount input and validation
  - Exchange rate display
  - Fee calculation
  - Account selection
  - Delivery method selection

## 🛠️ Development

### Code Organization

- **Feature-first**: Each feature is self-contained
- **Separation of Concerns**: Clear separation between UI, business logic, and data
- **Reusable Components**: Widgets are organized for maximum reusability
- **Consistent Naming**: Follows Flutter naming conventions

### Key Dependencies

- `flutter_riverpod` - State management
- `flutter_screenutil` - Responsive design utilities
- `hive_flutter` - Local data storage
- `path_provider` - File system access

### Building for Different Flavors

```bash
# Build APK for development
flutter build apk --flavor dev -t lib/main_dev.dart

# Build APK for production
flutter build apk --flavor prod -t lib/main.dart

# Build iOS for development
flutter build ios --flavor dev -t lib/main_dev.dart

# Build iOS for production
flutter build ios --flavor prod -t lib/main.dart
```

## 📱 Platform Support

- ✅ Android
- ✅ iOS

## 🔧 Troubleshooting

### Common Issues

1. **Flavor not found**: Ensure you're using the correct entry point file
2. **Build errors**: Run `flutter clean` and `flutter pub get`
3. **Dependency issues**: Check `pubspec.yaml` for version conflicts

### Debug Commands

```bash
# Clean build cache
flutter clean

# Get dependencies
flutter pub get

# Analyze code
flutter analyze

# Run tests
flutter test
```

## 📄 License

This project is proprietary and confidential.

## 🤝 Contributing

Please follow the established code organization patterns and ensure all new features follow the feature-first architecture.

---

For more information, contact the development team.
