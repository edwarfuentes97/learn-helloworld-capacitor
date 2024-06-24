import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(LearnHelloworldCapacitorPluginPlugin)
public class LearnHelloworldCapacitorPluginPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "LearnHelloworldCapacitorPluginPlugin"
    public let jsName = "LearnHelloworldCapacitorPlugin"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "echo", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = LearnHelloworldCapacitorPlugin()

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }
}
