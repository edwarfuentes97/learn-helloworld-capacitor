import Foundation

@objc public class LearnHelloworldCapacitorPlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print("edward funcion echo en LearnHelloworldCapacitorPlugin-", value)
        print(value)
        return value + " ------ texto modificado en el plugin"
    }
}
