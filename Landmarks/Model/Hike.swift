import Foundation

struct Hike: Codable, Hashable, Identifiable {
    // MARK: - Properties
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]

    struct Observation: Codable, Hashable {
        var distanceFromStart: Double

        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }

    // MARK: - Type properties
    static var formatter = LengthFormatter()

    // MARK: - Computed properties
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
}
