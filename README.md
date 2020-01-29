# Flutter Move To Background plugin
This is developed for the EWI Flutter project.
The plugin will be used whithin the Flutter Dart code so that at some point the app can be moved to background.
The plugin does nothign for iOS code.

Requirements:
* Flutter version 1.9.1+hotfix.6
* Dart version 2.5.0
* Android Studio 3.5.1 (Build #AI-191.8026.42.35.5900203)
* Xcode 11+
* CocoaPods 1.8.3+


**Integration**

- add move_to_background plugin to **pubspec.yaml**

```
move_to_background:
    git: 
        url: https://gitlab.plan-net.com/pnt/flutter-plugin-move-to-background
.git
```

**Usage example:**
```
    try {
	  platformVersion = await MoveToBackground.moveToBackground;
	} on PlatformException {
	  platformVersion = 'Failed to move to background.';
	}
```
