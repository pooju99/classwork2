# Priya's Vegan Kitchen - Recipe Book App

This is a Flutter mobile application developed as part of **CSC 4360 -
Mobile App Development (Fall 2025)** coursework.

## 📱 Project Overview

The **Recipe Book App** is a Flutter-based mobile app that allows users
to: - View a list of vegan recipes. - Navigate between **HomeScreen**
and **DetailsScreen**. - See full recipe details including
**ingredients** and **step-by-step preparation**. - Mark recipes as
**favorites** and view them in a dedicated **FavoritesScreen**.

This project is implemented as an **individual project** by **Priya
Koppuravuri**.

## 🎯 Features

-   **HomeScreen**: Displays a categorized list of recipes (Indian /
    International Specials / Indian Specials).
-   **DetailsScreen**: Shows detailed recipe information (ingredients +
    preparation steps).
-   **FavoritesScreen**: Lets users save favorite recipes and access
    them easily.
-   **Navigation**: Seamless navigation between screens with data
    passing.
-   **Specials**: Includes international specials (Spaghetti & Matcha
    Latte) and Indian special (Indian Laddoo).

## 📂 Project Structure

    lib/
     ├── main.dart              # App entry point
     ├── home_screen.dart       # Displays recipe list + navigation to details
     ├── details_screen.dart    # Displays recipe details (ingredients + steps)
     ├── favorites_screen.dart  # Displays favorite recipes list
     ├── recipes.dart           # Recipe model + dataset (ingredients + steps)

## 🛠️ Tech Stack

-   **Framework**: Flutter (Dart)
-   **Platform**: Android
-   **IDE**: Visual Studio Code / Android Studio

## 🚀 Getting Started

1.  Clone this repository:

    ``` bash
    git clone https://github.com/bplpriya/RecipeBookApp.git
    cd RecipeBookApp
    ```

2.  Get Flutter dependencies:

    ``` bash
    flutter pub get
    ```

3.  Run the app on an emulator or physical device:

    ``` bash
    flutter run
    ```

## 📦 APK Submission

The **debug APK file** is generated and submitted along with the GitHub
repository link for evaluation.\
To generate a new APK:

``` bash
flutter build apk --release
```

------------------------------------------------------------------------

✨ This project demonstrates **navigation, state management, and data
passing in Flutter** while also highlighting **UI/UX for recipe
applications**.
