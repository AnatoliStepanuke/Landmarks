import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    // MARK: - Properties
    // MARK: Private
    private var imageName: String
    private var coordinates: Coordinates

    // MARK: Public
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
            longitude: coordinates.longtitude
        )
    }

    // MARK: - Struct
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longtitude: Double
    }
}
