import UIKit
import Flutter
import AVFoundation

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    if #available(iOS 10.0, *) {
        SwiftSpeechRecognitionPlugin.register(with: self.registrar(forPlugin: "com.zapiti.text"))
    } else {
        // Fallback on earlier versions
    }
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
//    let CHANNEL = "flutter.native/helper"
//    let flutterVC = window?.rootViewController as! FlutterViewController
//    let channel = FlutterMethodChannel(name: CHANNEL, binaryMessenger: flutterVC)
//
//    channel.setMethodCallHandler { [unowned self] (methodCall, result) in
//        //            guard let arg = (methodCall.arguments as! [String]).first else { return }
//        switch methodCall.method {
//        case "helloFromNativeCode":
//           // result(self.getoy())
//            let synth = AVSpeechSynthesizer()
//            var myUtterance = AVSpeechUtterance(string: "bananananananannananana")
//
//
//            //        myUtterance.rate = 0.5
//            //        myUtterance.pitchMultiplier = 0.8
//
//
//            myUtterance.voice = AVSpeechSynthesisVoice(language: "pt-BR")
//            synth.speak(myUtterance)
//            print("pqp deus")
//            result("ola mundo")
//        default:
//            debugPrint(methodCall.method)
//            result(methodCall.method)
//        }
//
//
//
//    }
 
//    func getoy()->String{
//
//        return "oi";
//    }
}
//class SpeachModel: NSObject {
//
//    let synth = AVSpeechSynthesizer()
//    var myUtterance = AVSpeechUtterance(string: "")
//    var voice: AVSpeechSynthesisVoice!
//    override init() {
//        super.init()
//
//    }
//
//
//    func siriSpeak(theText: String) {
//        myUtterance = AVSpeechUtterance(string: theText)
//
//        //        myUtterance.rate = 0.5
//        //        myUtterance.pitchMultiplier = 0.8
//
//
//        myUtterance.voice = AVSpeechSynthesisVoice(language: "pt-BR")
//        synth.speak(myUtterance)
//    }
//
//    func stop(){
//        synth.stopSpeaking(at: AVSpeechBoundary.immediate)
//    }
//
//}
