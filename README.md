
# Travel App Flutter

> A modern, modular Flutter travel application UI for exploring destinations, viewing details, and simulating the booking process.

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=flat-square&logo=flutter)![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=flat-square&logo=dart)![License](https://img.shields.io/badge/License-Educational-green?style=flat-square)![Platform](https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-lightgrey?style=flat-square)

## Overview

**Travel App Flutter** is a clean, well-structured Flutter UI project designed as a hands-on learning example for Flutter development. It demonstrates modular architecture, reusable widget design, consistent theming, and smooth multi-screen navigation — all using Flutter and Material Design components.

## Features

* Browse a curated list of travel destinations
* View rich destination detail pages
* Fill out a booking form interface
* Select booking dates via a date picker
* See a booking success confirmation dialog
* Clean and intuitive navigation flow between screens
* Fully reusable, composable UI widgets

## Project Structure

```

travel_app_flutter/
│
├── lib/
│   ├── main.dart                    # Application entry point
│   │
│   ├── models/
│   │   └── travel_data.dart         # Travel destination data model
│   │
│   ├── screens/
│   │   ├── home_screen.dart         # Main screen displaying destinations
│   │   ├── detail_screen.dart       # Destination detail page
│   │   └── booking_screen.dart      # Booking form interface
│   │
│   ├── widgets/
│   │   ├── category_chip.dart       # Category selection UI chip
│   │   ├── custom_button.dart       # Reusable button component
│   │   ├── destination_card.dart    # Destination display card
│   │   └── rating_widget.dart       # Star rating display component
│   │
│   └── theme/
│       └── app_theme.dart           # Global application theme & styling
├── assets/                          # Images, fonts, and static resources
├── project_output/                  # Output videos & Screenshots
|   ├── demos/ 
|   ├── screenshots/ 
|
├── test/                            # Unit and widget tests
├── pubspec.yaml                     # Project dependencies and metadata
└── README.md
```

### Architecture Overview

The project follows a  **feature-based modular structure** :

| Layer           | Folder        | Responsibility                                  |
| --------------- | ------------- | ----------------------------------------------- |
| Entry Point     | `main.dart` | App initialization, routing setup               |
| Data            | `models/`   | Data classes and business logic structures      |
| UI (Pages)      | `screens/`  | Full-page views tied to navigation routes       |
| UI (Components) | `widgets/`  | Reusable, stateless/stateful UI building blocks |
| Styling         | `theme/`    | Centralized colors, typography, and theme data  |

## Application Screens

| Screen          | File                    | Description                               |
| --------------- | ----------------------- | ----------------------------------------- |
| Home            | `home_screen.dart`    | Destination list with category filters    |
| Detail          | `detail_screen.dart`  | Full destination info and gallery         |
| Booking Form    | `booking_screen.dart` | Input form to capture booking details     |
| Date Selection  | *(in booking_screen)* | Date picker for travel dates              |
| Success Dialog  | *(in booking_screen)* | Confirmation after successful booking     |
| Navigation Flow | *(via Navigator)*     | Seamless push/pop routing between screens |

## Getting Started

### Prerequisites

* [Flutter SDK](https://flutter.dev/docs/get-started/install) (3.x or later)
* Dart SDK (bundled with Flutter)
* Android Studio / VS Code with Flutter plugin
* An emulator or physical device

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/EngineerFabrice/travel_app_flutter.git
   ```
2. **Navigate to the project directory**
   ```bash
   cd travel_app_flutter
   ```
3. **Install dependencies**
   ```bash
   flutter pub get
   ```
4. **Run the application**
   ```bash
   flutter run
   ```

> To run on a specific platform, use `flutter run -d chrome` (web), `flutter run -d android`, or `flutter run -d ios`.

## Technologies Used

| Technology                   | Purpose                     |
| ---------------------------- | --------------------------- |
| [Flutter](https://flutter.dev/) | Cross-platform UI framework |
| [Dart](https://dart.dev/)       | Programming language        |
| Material Design              | UI component system         |

## Learning Objectives

This project is designed to help Flutter learners understand and practice:

* **Widget composition** — building UIs from small, reusable components
* **Screen navigation** — using Flutter's `Navigator` for push/pop routing
* **Separation of concerns** — keeping screens, widgets, models, and themes isolated
* **Theming** — applying a consistent design system via `ThemeData`
* **State management basics** — managing UI state in `StatefulWidget`s
* **Clean folder structure** — organizing a Flutter project for scalability

## Contributing

Contributions are welcome! To get started:

1. **Fork** the repository
2. **Create a feature branch**
   ```bash
   git checkout -b feature/your-feature-name
   ```
3. **Commit your changes**
   ```bash
   git commit -m "feat: add your feature description"
   ```
4. **Push to your fork**
   ```bash
   git push origin feature/your-feature-name
   ```
5. **Open a Pull Request** against the `main` branch

Please follow the existing code style and keep widgets small and single-purpose.

## License

This project is intended for **educational purposes** and learning Flutter development. Feel free to use it as a reference or starting point for your own projects.

## Authors

**Fabrice NDAYISABA** — [@EngineerFabrice](https://github.com/EngineerFabrice)

**Silas HAKUZWIMANA** — [@SilasHakuzwimana](https://github.com/SilasHakuzwimana)

> *
>     Built with ❤️ using Flutter & Dart*
