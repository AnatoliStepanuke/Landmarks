import SwiftUI

// MARK: View
struct CategoryHome: View {
    // MARK: - Properties
    @EnvironmentObject var modelData: ModelData
    @State private var showingProfile = false
    
    // MARK: - Body
    var body: some View {
        // MARK: - NavigationView
        NavigationView {
            // Landmarks
            List {
                PageView(pages: ModelData.Constants.features.map{ FeatureCard(landmark: $0) })
                    .aspectRatio(3 / 2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())

                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key] ?? modelData.landmarks)
                }
                .listRowInsets(EdgeInsets())
            }
            
            .listStyle(.inset)

            // Navigation
            .navigationTitle("Featured")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
                .foregroundColor(.black)
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environmentObject(modelData)
            }
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
