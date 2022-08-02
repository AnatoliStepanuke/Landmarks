import SwiftUI

// MARK: - View
struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white ,lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

// MARK: - PreviewProvider
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
