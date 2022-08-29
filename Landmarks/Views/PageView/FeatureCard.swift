import SwiftUI

// MARK: FeatureCard
struct FeatureCard: View {
    // MARK: - Properties
    var landmark: Landmark

    // MARK: - Body
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay {
                TextOverlay(landmark: landmark)
            }
    }
}

// MARK: TextOverlay
struct TextOverlay: View {
    // MARK: - Properties
    var landmark: Landmark
    var gradient: LinearGradient {
        .linearGradient(
            Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .top)
    }

    // MARK: - Body
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

// MARK: PreviewProvider
struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData.Constants.features[0])
    }
}
