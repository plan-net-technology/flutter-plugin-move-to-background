package com.plannet.move_to_background;

import com.plannet.move_to_background.utils.Constants;

import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;
import io.flutter.plugin.common.PluginRegistry.Registrar;

import android.app.Activity;

/** MoveToBackgroundPlugin */
public class MoveToBackgroundPlugin implements MethodCallHandler {
  private static Activity activity;
  /** Plugin registration. */
  public static void registerWith(Registrar registrar) {
    MoveToBackgroundPlugin.activity = registrar.activity();
    final MethodChannel channel = new MethodChannel(registrar.messenger(), "move_to_background");
    channel.setMethodCallHandler(new MoveToBackgroundPlugin());
  }

  @Override
  public void onMethodCall(MethodCall call, Result result) {
    if (call.method.equals(Constants.METHOD_MOVE_TO_BACKGROUND)) {
      MoveToBackgroundPlugin.activity.moveTaskToBack(true);
      result.success("");
    } else {
      result.notImplemented();
    }
  }
}
