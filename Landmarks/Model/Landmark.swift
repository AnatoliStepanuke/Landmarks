import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
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
    var isFavorite: Bool
    var isFeatured: Bool
    var category: Category

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

    // MARK: - Enum
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
        case woods = "Woods"
    }
}
