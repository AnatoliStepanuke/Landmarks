import SwiftUI

// MARK: - View
struct LandmarkRow: View {
    // MARK: - Properties
    var landmark: Landmark

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            Text(landmark.name)
            Spacer()
        }
    }
}

// MARK: - PreviewProvider
struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
