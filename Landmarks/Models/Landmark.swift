import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var isFavorite: Bool
    var name: String
    var park: String
    var state: String
    var description: String
    var category: Category
    var image: Image { Image(imageName) }
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    private var imageName: String
    private var coordinates: Coordinates
}
