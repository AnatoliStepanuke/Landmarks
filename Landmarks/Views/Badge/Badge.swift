import SwiftUI

struct Badge: View {
//    var badgeSymbols: some View {
//        RotatedBadgeSymbol
//    }

    var body: some View {
        ZStack {
            BadgeBackground()
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
