import SwiftUI

// MARK: View
struct LandmarkList: View {
    // MARK: - Properties
    @State private var showFavoritesOnly = false
    @EnvironmentObject var modelData: ModelData
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    // MARK: - Body
    var body: some View {
        // MARK: - NavigationView
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }

            }
            .navigationTitle("Landmarks")
        }
    }
}

// MARK: PreviewProvider
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ForEach(["iPhone 12 mini", "iPhone SE (3rd generation)"], id: \.self) { deviceName in
                LandmarkList()
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
                    .environmentObject(ModelData())
            }
        }
    }
}
