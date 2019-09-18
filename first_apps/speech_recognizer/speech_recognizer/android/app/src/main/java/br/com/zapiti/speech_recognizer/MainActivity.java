package br.com.zapiti.speech_recognizer;

import android.os.Bundle;
import io.flutter.app.FlutterActivity;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugins.GeneratedPluginRegistrant;


public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
    new MethodChannel(getFlutterView(), "buildflutter.com/platform").setMethodCallHandler(
            (call, result) -> {
              if (call.method.equals("getResult"))
                result.success(5);
            });
  }
}
