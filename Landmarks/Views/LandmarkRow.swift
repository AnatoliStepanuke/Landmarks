import SwiftUI

// MARK: View
struct LandmarkRow: View {
    // MARK: - Properties
    var landmark: Landmark

    // MARK: - Body
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 65, height: 65)
                .clipShape(Circle())
                .padding()
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .padding()
                    .foregroundColor(.yellow)
            }
        }
    }
}

// MARK: PreviewProvider
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
