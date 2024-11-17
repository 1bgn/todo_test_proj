watch:
	flutter pub run build_runner watch --delete-conflicting-outputs
buildapp:
	flutter build apk --release
buildbundle:
	flutter build appbundle --release
buildios:
	 flutter clean && flutter pub get && cd ios &&pod install --repo-update && cd ..

gen:
	dart run build_runner build --delete-conflicting-outputs