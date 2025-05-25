# Islami App

A comprehensive Islamic application built with Flutter that provides various Islamic features and resources for Muslims.

## 🌟 Features

- **Quran Reading**: Browse and read the full Quran with a user-friendly interface.
- **Hadith Reading**: Access authentic hadiths and view their details.
- **Tasbeeh Counter**: Digital counter for dhikr and tasbeeh (سبحة).
- **Quran Radio**: Listen to live streaming of Quran recitation (إذاعة القرآن الكريم).
- **Settings**: Change language, theme, and other preferences.

## 🗂️ Project Structure (Key Files)

```
lib/
├── home/
│   ├── bottom_sheets/
│   │   ├── language_bottomsheet.dart
│   │   └── theme_bottomsheet.dart
│   ├── providers/
│   │   └── my_provider.dart
│   └── tabs/
│       ├── ahadeth.dart
│       ├── hadeth_Details.dart
│       ├── quran.dart
│       ├── sepha.dart
│       ├── settings.dart
│       └── home.dart
├── radio_item.dart
├── radio_model.dart
├── hadeth_model.dart
├── main.dart
├── my_theme_data.dart
├── splash_screen.dart
├── sura_details.dart
├── sura_model.dart
```

### Key Packages & Dependencies
- **State Management**: 
  - Provider (^6.1.5) for state management
- **UI & Styling**:
  - Google Fonts (^6.2.1) for beautiful typography
  - Cupertino Icons (^1.0.8) for iOS-style icons
- **Localization**:
  - Easy Localization (^3.0.7+1) for multi-language support
- **Networking**:
  - HTTP (^1.4.0) for API calls
- **Audio**:
  - Audio Players (^6.4.0) for Quran recitation
- **Storage**:
  - Shared Preferences (^2.5.3) for local data persistence

### Development Tools
- Flutter Lints (^5.0.0) for code quality
- Flutter Test for unit testing

## 🚀 Getting Started

### Prerequisites
- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Git

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/AhmedYousef72/islami_app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd islami_app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```

## 🤝 Contributing
Contributions are welcome! Please open an issue or submit a pull request.


## 🙏 Acknowledgments
- Flutter community and package authors
- Quran and Hadith data providers
