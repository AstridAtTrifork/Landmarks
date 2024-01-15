import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Sidebar")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
