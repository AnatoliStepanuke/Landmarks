import SwiftUI

// MARK: View
struct CategoryRow: View {
    // MARK: - Properties
    var categoryName: String
    var items: [Landmark]

    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

// MARK: PreviewProvider
struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: ModelData.Constants.landmarks[0].category.rawValue,
            items: Array(ModelData.Constants.landmarks.prefix(4))
        )
    }
}
