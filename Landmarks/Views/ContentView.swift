import SwiftUI

// MARK: - View
struct ContentView: View {
    var body: some View {
        VStack {
            // MARK: - MapView()
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            // MARK: - CircleImage()
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            // MARK: - Detail view
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

// MARK: - PreviewProvider
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
