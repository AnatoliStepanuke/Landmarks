import SwiftUI

// MARK: View
struct HikeBadge: View {
    // MARK: - Properties
    var name: String

    // MARK: - Body
    var body: some View {
        VStack(alignment: .center) {
            Badge()
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

// MARK: PreviewProvider
struct HikeBadge_Previews: PreviewProvider {
    static var previews:  some View {
        HikeBadge(name: "Preview Testing")
    }
}
