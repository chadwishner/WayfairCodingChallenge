# Wayfair Coding Challenge

An iOS app built for the Wayfair coding interview challenge. The app fetches and displays a product catalog from the Wayfair API in a clean, grid-based layout.

## Features

- Fetches product data from the Wayfair interview API
- Displays products in a responsive 2-column grid
- Product cards show name, star ratings (with half-star support), description, and formatted release date

## Architecture

The project uses **SwiftUI** with an **MVVM** pattern and organizes UI components using **Atomic Design**:

| Layer | Components |
|-------|------------|
| **Atoms** | `SystemImageView`, `TextFieldView` |
| **Molecules** | `RatingsView` |
| **Organisms** | `ProductView` |
| **Templates** | `ProductPageTemplateView` |
| **Screens** | `ProductsPageScreenView` |

`ProductsPageModel` serves as the ViewModel, fetching products via `URLSession` and publishing updates to the UI.

## Requirements

- Xcode 15+
- iOS 17+
- No external dependencies

## Running the App

1. Clone the repository
2. Open `Wayfair Coding Challenge.xcodeproj` in Xcode
3. Select a simulator or device target
4. Build and run (⌘R)

## Tests

Unit tests cover rating rounding logic, date formatting, and API data fetching. Run tests in Xcode with ⌘U.
