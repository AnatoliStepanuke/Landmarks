import SwiftUI

@main
struct LandmarksApp: App {
    // MARK: - Properties
    @StateObject private var modelData = ModelData.Constants.modelData

    // MARK: - Body
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
