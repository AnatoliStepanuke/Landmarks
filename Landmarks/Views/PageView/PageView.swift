import SwiftUI

// MARK: PageView
struct PageView<Page: View>: View {
    // MARK: - Properties
    var pages: [Page]
    @State private var currentPage = 0

    // MARK: - Body
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            PageViewController(pages: pages, currentPage: $currentPage)
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

// MARK: PreviewProvider
struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData.Constants.features.map { FeatureCard(landmark: $0)
        })
        .aspectRatio(3 / 2, contentMode: .fit)
    }
}
