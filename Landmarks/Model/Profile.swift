import Foundation

struct Profile {
    // MARK: - Properties
    var username: String
    var prefersNotification = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    // MARK: - Type properties
    static let `default` = Profile(username: "Anatoli")

    // MARK: - Enum
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}
