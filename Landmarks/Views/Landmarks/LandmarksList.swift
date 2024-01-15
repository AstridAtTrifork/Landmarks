import SwiftUI

struct LandmarksList: View 
{
    @Environment(ModelData.self) var modelData
    @State private var isShowingFavoritesOnly = false;
    
    var filteredLandmarks: [Landmark] 
    {
        modelData.landmarks.filter
        {
            landmark in (!isShowingFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View 
    {
        NavigationSplitView
        {
            List
            {
                Toggle(isOn: $isShowingFavoritesOnly)
                {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks)
                {
                    landmark in NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } 
                    label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarksList()
        .environment(ModelData())
}
