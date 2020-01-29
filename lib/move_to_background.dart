import 'dart:async';

import 'package:flutter/services.dart';
import 'package:move_to_background/constants.dart';

class MoveToBackground {
  static const MethodChannel _channel =
      const MethodChannel('move_to_background');

  static Future<String> moveToBackground() async {
    final String moveToBackground = await _channel.invokeMethod(Constants.METHOD_MOVE_TO_BACKGROUND);
    return moveToBackground;
  }
}
