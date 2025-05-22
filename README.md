# UAE Phone Top-up Management App

A Flutter application that allows users to manage their top-up beneficiaries and execute top-up transactions for UAE phone numbers.

## Features

- Add and manage up to 5 top-up beneficiaries
- View available top-up options (AED 5, 10, 20, 30, 50, 75, 100)
- Execute top-up transactions with validation
- Monthly limits based on verification status
- Transaction fee of AED 3 per top-up

## Technical Stack

- Flutter
- Bloc for state management
- Freezed for immutable state and events
- GetIt and Injectable for dependency injection
- Auto Route for navigation
- ScreenUtil for responsive UI

## Setup Instructions

1. Ensure you have Flutter installed on your machine
2. Clone the repository
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Generate code:
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
5. Run the app:
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── core/
│   ├── di/
│   │   └── injection.dart
│   └── presentation/
│       └── routes/
│           └── app_router.dart
├── features/
│   ├── beneficiaries/
│   │   ├── domain/
│   │   │   └── entities/
│   │   │       └── beneficiary.dart
│   │   └── presentation/
│   │       ├── bloc/
│   │       │   ├── beneficiaries_bloc.dart
│   │       │   ├── beneficiaries_event.dart
│   │       │   └── beneficiaries_state.dart
│   │       └── pages/
│   │           └── beneficiaries_page.dart
│   └── top_up/
│       ├── domain/
│       │   └── entities/
│       │       └── top_up_option.dart
│       └── presentation/
│           ├── bloc/
│           │   ├── top_up_bloc.dart
│           │   ├── top_up_event.dart
│           │   └── top_up_state.dart
│           └── pages/
│               └── top_up_page.dart
└── main.dart
```

## Assumptions

1. User verification status is managed by a separate feature
2. Backend API is mocked for demonstration purposes
3. User balance is managed by a separate feature
4. Monthly limits are reset at the beginning of each calendar month

## Testing

Run unit tests:
```bash
flutter test
```

## Error Handling

The app implements robust error handling for:
- API failures
- Network issues
- Input validation
- Business logic validation (e.g., monthly limits, maximum beneficiaries)

## Performance Considerations

- Efficient state management using Bloc
- Responsive UI using ScreenUtil
- Optimized list rendering
- Proper error handling and loading states
