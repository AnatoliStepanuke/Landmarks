import SwiftUI
import MapKit

// MARK: View
struct MapView: View {
    // MARK: - Properties
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    // MARK: - Body
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear() {
                setRegion(coordinate)
            }
    }

    // MARK: - Setups
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

// MARK: PreviewProvider
struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(
            latitude: 34.011_286,
            longitude: -116.166_868
        ))
    }
}
