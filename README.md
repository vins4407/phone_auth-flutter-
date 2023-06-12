# Phone Auth Using Flutter Firebase

This repository provides an easy integration for adding phone authentication to any existing Flutter application using Firebase.

## Steps to Run the Application

1. Clone the repository to your local machine.
2. Get the dependencies by running the following command in the project directory: flutter pub get
   ```bash
   flutter pub get
   ```
3. Set up Firebase for the Flutter app by following these steps:
- Enable Firestore, Authentication for Phone, and Storage services in your Firebase project.
- Make sure to update the rules to allow read and write access for the enabled services in Firebase.
4. Integrate Firebase into your Flutter app using the documentation provided by Firebase.
5. Start building the application on any emulator or device using the following command:
```bash
  flutter run
  //or
  flutter run -d chrome --web-renderer html (to see the best output)
```

   
Congratulations! You have successfully integrated phone authentication using Flutter Firebase into your application.
