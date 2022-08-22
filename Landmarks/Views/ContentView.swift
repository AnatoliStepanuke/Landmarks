import SwiftUI

// MARK: View
struct ContentView: View {
    // MARK: - Properties
    @State private var selection: Tab = .featured

    // MARK: - Enum
    enum Tab {
        case featured
        case list
    }

    // MARK: - Body
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

// MARK: PreviewProvider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
