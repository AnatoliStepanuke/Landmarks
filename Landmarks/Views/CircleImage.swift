import SwiftUI

// MARK: View
struct CircleImage: View {
    // MARK: - Properties
    var image: Image

    // MARK: - Body
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white ,lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

// MARK: PreviewProvider
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtleRock"))
    }
}
