import Flutter
import UIKit

public class SwiftMoveToBackgroundPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "move_to_background", binaryMessenger: registrar.messenger())
    let instance = SwiftMoveToBackgroundPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      if (Constants.METHOD_MOVE_TO_BACKGROUND == call.method) {
        result("");
      } else {
        result(FlutterMethodNotImplemented);
      }
  }
}
