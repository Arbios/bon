import Foundation
import RealmSwift

class Organization: Object {
  @objc dynamic var name: String = ""
  @objc dynamic var distance: Int = 0
}
