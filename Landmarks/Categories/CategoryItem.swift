import SwiftUI

struct CategoryItem: View 
{
    var landmark: Landmark
    var body: some View 
    {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .frame(width: 155, height: 155)
            .cornerRadius(5)
            Text(landmark.name)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

#Preview 
{
    let landmark = ModelData().landmarks[2]
    return CategoryItem(landmark: landmark)
}