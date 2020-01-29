# Flutter Move To Background plugin
The plugin will be used whithin the Flutter Dart code so that at some point the app can be moved to background when using the HW ar SW back button on Android.
The plugin does nothign for iOS.

Requirements:
* Flutter version 1.12.13+hotfix.5
* Dart version 2.7.0
* Android Studio 3.5.3 (Build #AI-191.8026.42.35.6010548, built on November 15, 2019)
* Xcode Version 11.3.1 (11C504)
* CocoaPods 1.8.1+


**Integration**

- add move_to_background plugin to **pubspec.yaml**

```
move_to_background:
    git: 
        url: https://github.com/plan-net-technology/flutter-plugin-move-to-background
.git
```

**Usage example:**
```
  Widget _bodyWithWillPopScope(BuildContext context, MainPageState state) {
    return WillPopScope(
      onWillPop: () async {
        await MoveToBackground.moveToBackground();
        return false;
      },
      child: _bodyForState(context, state),
    );
  }
```

## Authors

r.constantinescu@plan-net.com, g.dusa@plan-net.com

## License

This plugin is available under the MIT license. See the [License](https://github.com/plan-net-technology/flutter-plugin-move-to-background/blob/master/LICENSE) file for more info.
