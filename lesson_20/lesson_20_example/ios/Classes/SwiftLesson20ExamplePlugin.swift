import Flutter
import UIKit

public class SwiftLesson20ExamplePlugin: NSObject, FlutterPlugin {
  var channel: FlutterMethodChannel?

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "lesson_20_example", binaryMessenger: registrar.messenger())
    

    let instance = SwiftLesson20ExamplePlugin()
    instance.channel = channel

    registrar.addMethodCallDelegate(instance, channel: channel)
    registrar.addApplicationDelegate(instance)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      case "power2":
        power2(call.arguments as! Int, result: result)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
  
  private func power2(_ value: Int, result: @escaping FlutterResult) {
    let res = value * value
    
    result(res)
  }
}

extension SwiftLesson20ExamplePlugin: UIApplicationDelegate {
  public func applicationDidEnterBackground(_ application: UIApplication) {
    channel?.invokeMethod("enterBackground", arguments: nil)
  }
  
  public func applicationWillEnterForeground(_ application: UIApplication) {

  }
}

