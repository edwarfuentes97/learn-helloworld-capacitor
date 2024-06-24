import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(LearnHelloworldCapacitorPluginPlugin)
public class LearnHelloworldCapacitorPluginPlugin: CAPPlugin, CAPBridgedPlugin {
    // tiene algunos métodos exportados que serán invocables desde JavaScript y envuelve los métodos de implementación
    
    public let identifier = "LearnHelloworldCapacitorPluginPlugin"
    public let jsName = "LearnHelloworldCapacitorPlugin"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise),
        CAPPluginMethod(name: "customEcho", returnType: CAPPluginReturnNone),
        CAPPluginMethod(name: "checkPermissions", returnType: CAPPluginReturnNone),
        CAPPluginMethod(name: "requestPermissions", returnType: CAPPluginReturnNone)
    ]
    private let implementation = LearnHelloworldCapacitorPlugin()
    
    override public init() {
        super.init()
    }
    
    override public func load() {
        customEcho()
        print("Plugin cargado correctamente en load()")
    }
    
    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        print("edward funcion echo en LearnHelloworldCapacitorPluginPlugin", value)
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
    
    @objc func customEcho() {
        print("edward print desde funcion customEcho")
    }
    
    @objc override public func checkPermissions(_ call: CAPPluginCall) {
        print("checkPermissions")
    }
    
    @objc override public func requestPermissions(_ call: CAPPluginCall) {
        print("requestPermissions")
    }
}
