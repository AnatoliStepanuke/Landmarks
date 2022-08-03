import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    // MARK: - Properties
    // MARK: Private
    private var imageName: String
    private var coordinates: Coordinates

    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    // MARK: - Computed properties
    // MARK: Public
    var image: Image {
        Image(imageName)
    }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude
        )
    }

    // MARK: - Struct
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
