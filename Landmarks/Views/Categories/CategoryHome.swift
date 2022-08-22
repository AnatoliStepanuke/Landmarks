import SwiftUI

// MARK: View
struct CategoryHome: View {
    // MARK: - Properties
    @EnvironmentObject var modelData: ModelData
    
    // MARK: - Body
    var body: some View {
        // MARK: - NavigationView
        NavigationView {
            List {
                modelData.features[2].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())

                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key] ?? modelData.landmarks)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

// MARK: PreviewProvider
struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
