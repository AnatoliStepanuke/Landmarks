import SwiftUI

// MARK: View
struct CategoryItem: View {
    // MARK: - Properties
    var landmark: Landmark

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

// MARK: PreviewProvider
struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData.Constants.landmarks[0])
    }
}
