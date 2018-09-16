import Foundation
import UIKit

class Organization {
    var name: String
    var price: Int
    var location: String
    var image: UIImage?
    var category: Category
    
    init(name: String, price: Int, location: String, image: UIImage?, category: Category) {
        self.name = name
        self.price = price
        self.location = location
        self.image = image
        self.category = category
        
        // Init message
        print("Инициализирована организация \(name)")
    }

}
