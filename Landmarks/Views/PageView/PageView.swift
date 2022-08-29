import SwiftUI

// MARK: PageView
struct PageView<Page: View>: View {
    // MARK: - Properties
    var pages: [Page]
    @State private var currentPage = 0

    // MARK: - Body
    var body: some View {
        VStack {
            PageViewController(pages: pages, currentPage: $currentPage)
            Text("Current Page: \(currentPage)")
        }
    }
}

// MARK: PreviewProvider
struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData.Constants.features.map { FeatureCard(landmark: $0)
                .aspectRatio(3 / 2, contentMode: .fit)
        })
    }
}
