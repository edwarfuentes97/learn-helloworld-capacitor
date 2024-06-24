import Foundation
import Capacitor

@objc public class LearnHelloworldCapacitorPlugin: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}
