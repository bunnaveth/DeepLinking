import SwiftUI

@main
struct DeepLinkingApp: App {
    private var navPath = NavigationPath()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack() {
                StateList()
            }
        }
    }
}
