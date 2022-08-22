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
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
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
