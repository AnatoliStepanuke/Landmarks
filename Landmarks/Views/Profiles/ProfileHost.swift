import SwiftUI

// MARK: View
struct ProfileHost: View {
    // MARK: - Properties
    @State private var draftProfile = Profile.default

    // MARK: - Body
    var body: some View {
        Text("Today's profile is \(draftProfile.username)")
    }
}

// MARK: PreviewProvider
struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
