import SwiftUI

struct ContentView: View 
{
    @State private var selection: Tab = .featured
    
    enum Tab
    {
        case featured
        case listView
    }
    
    var body: some View 
    {
        TabView(selection: $selection)
        {
            CategoryHome()
                .tabItem { Label("Featured", systemImage: "star") }
                .tag(Tab.featured)
            LandmarksList()
                .tabItem { Label("List", systemImage: "list.bullet") }
                .tag(Tab.listView)
        }
    }
}

#Preview 
{
    ContentView()
        .environment(ModelData())
}
