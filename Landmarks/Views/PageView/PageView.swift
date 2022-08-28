import SwiftUI

// MARK: PageView
struct PageView<Page: View>: View {
    // MARK: - Properties
    var pages: [Page]

    // MARK: - Body
    var body: some View {
        PageViewController(pages: pages)
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
