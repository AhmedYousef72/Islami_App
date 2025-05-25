# Islami App

A modern Islamic app built with Flutter, providing essential features for Muslims in a beautiful and easy-to-use interface.

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

## 🛠️ Technologies & Packages

- **Flutter** (SDK ^3.7.0)
- **Dart**
- **Provider** (state management)
- **Google Fonts** (custom fonts)
- **Cupertino Icons** (iOS-style icons)
- **Easy Localization** (multi-language support)
- **HTTP** (API/networking)
- **Audioplayers** (Quran radio streaming)
- **Shared Preferences** (local storage)

## 🚀 Getting Started

### Prerequisites
- Flutter SDK
- Dart SDK
- Android Studio or VS Code
- Git

### Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/islami_app.git
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

## 📄 License
This project is licensed under the MIT License.

## 🙏 Acknowledgments
- Flutter community and package authors
- Quran and Hadith data providers
