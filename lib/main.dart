name: Build APK

on:
  push:
    branches: [ main ]
  workflow_dispatch: {}

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-java@v4
        with:
          distribution: 'zulu'
          java-version: '17'

      - uses: subosito/flutter-action@v2
        with:
          channel: 'stable'

      - name: Ajouter la plateforme Android
        run: flutter create --platforms=android .

      - name: Installer les dépendances
        run: flutter pub get

      - name: Compiler l'APK (debug)
        run: flutter build apk --debug

      - name: Publier l'APK comme artefact
        uses: actions/upload-artifact@v4
        with:
          name: amigo-chat-apk
          path: build/app/outputs/flutter-apk/app-debug.apk
