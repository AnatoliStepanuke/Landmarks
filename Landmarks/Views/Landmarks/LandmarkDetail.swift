import SwiftUI

// MARK: View
struct LandmarkDetail: View {
    // MARK: - Properties
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id}) ?? 0
    }

    // MARK: - Body
    var body: some View {
        ScrollView {
            // MARK: - MapView()
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            // MARK: - CircleImage()
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            // MARK: - Detail view
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }
            .padding()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: PreviewProvider
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData.Constants.landmarks[0])
            .environmentObject(ModelData.Constants.modelData)
    }
}
