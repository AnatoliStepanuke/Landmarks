import SwiftUI

// MARK: View
struct LandmarkList: View {
    var body: some View {
        // MARK: - NavigationView
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

// MARK: PreviewProvider
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 12 mini", "iPhone SE (3rd generation)"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
