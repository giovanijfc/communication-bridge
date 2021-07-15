@objc(GeneratorRandomNumberViewManager)
class GeneratorRandomNumberViewManager: RCTViewManager {
    override static func requireMainQueueSetup() -> Bool {
        return true
    }
    
    override func view () -> UIView! {
        return GeneratorRandomNumberView()
    }
}
