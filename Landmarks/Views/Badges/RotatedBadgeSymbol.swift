import SwiftUI

// MARK: View
struct RotatedBadgeSymbol: View {
    // MARK: - Properties
    let angle: Angle

    // MARK: - Body
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

// MARK: PreviewProvider
struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: Angle(degrees: 5))
    }
}
