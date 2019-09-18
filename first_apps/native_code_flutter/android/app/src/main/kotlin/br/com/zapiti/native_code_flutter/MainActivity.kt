package br.com.zapiti.native_code_flutter

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)

    SpeechRecognitionPlugin.registerWith(this.registrarFor("com.zapiti.text"))
    GeneratedPluginRegistrant.registerWith(this)

  }
}
//class MainActivity : FlutterActivity() {
//  private var textToSpeech: TextToSpeech? = null
//  private val REQ_CODE = 100
//  var event = ""
//  override fun onCreate(savedInstanceState: Bundle?) {
//    super.onCreate(savedInstanceState)
//    GeneratedPluginRegistrant.registerWith(this)
//    MethodChannel(flutterView, CHANNEL).setMethodCallHandler { call, result ->
//      if (call.method == "helloFromNativeCode") {
//        helloFromNativeCode()
//        result.success(event)
//      }
//    }
//  }
//
//  private fun helloFromNativeCode(): String {
//    val intent = Intent(RecognizerIntent.ACTION_RECOGNIZE_SPEECH)
//    intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE_MODEL,
//            RecognizerIntent.LANGUAGE_MODEL_FREE_FORM)
//    intent.putExtra(RecognizerIntent.EXTRA_LANGUAGE, Locale.getDefault())
//    intent.putExtra(RecognizerIntent.EXTRA_PROMPT, "Need to speak")
//    try {
//      startActivityForResult(intent, REQ_CODE)
//    } catch (a: ActivityNotFoundException) {
//      Toast.makeText(applicationContext,
//              "Sorry your device not supported",
//              Toast.LENGTH_SHORT).show()
//    }
//
//    return "Hello from Native Android Code"
//  }
//
//  companion object {
//    private val CHANNEL = "flutter.native/helper"
//  }
//
//  override fun onActivityResult(requestCode: Int, resultCode: Int, data: Intent?) {
//    super.onActivityResult(requestCode, resultCode, data)
//    when (requestCode) {
//      REQ_CODE -> {
//        if (resultCode == RESULT_OK && null != data) {
//          val result = data.getStringArrayListExtra(RecognizerIntent.EXTRA_RESULTS);
//          Log.d("pqp", result.toString())
//          event = result.toString()
//          val channel =  MethodChannel(flutterView, CHANNEL)
//          val name = "helloFromNativeCode"; // or 'baz', or 'unknown'
//          val value = "helloFromNativeCode";
//          channel.invokeMethod(name, value, object: MethodChannel.Result {
//            override fun success(result: Any?) {
//              Log.i("MSG", "$result")
//            }
//            override fun error(code: String?, msg: String?, details: Any?) {
//              Log.e("MSG", "$code failed: $msg")
//            }
//            override fun notImplemented() {
//              Log.e("MSG", " not implemented")
//            }
//          })
//        }
//      }
//    }
//  }
//}
//
//
