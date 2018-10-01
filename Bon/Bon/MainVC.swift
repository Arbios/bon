import UIKit
import RealmSwift

// MARK: - Global variables
var mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
var subController = mainStoryboard.instantiateViewController(withIdentifier: "SubCategoriesVC") as! SubCategoriesVC
var organizations: [String] = []
// Категории
var categories: [String] = []

// MARK: - Class - MainVC
class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  // Get Realm
  let realm = try! Realm()
  
  static let mainVC = MainVC()
  
  var currentCategory = ""
  // MARK: - ViewDidLoad
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    let restaurants = ["Кофетун","Чайхана","Стейк-Хаус","Шашлычная Северная","Ресторан Точка","Patio","WhiteCafe","PizzaHouse","BurgerAvenue","CherryCake","SteakBro"]
    
    let myCompany = Organization()
    myCompany.add(name: "Patio", distance: 2)
    
    // REALM Data
    let organization = Organization()
    organization.distance = 8
    organization.name = "Кофетун"
    
    try! realm.write {
      realm.add(myCompany)
    }
    
    print(organizations)
  }
  
  // MARK: - TableViewDataSource
  
  // Sections
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  //  Rows
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return realm.objects(Organization.self).count
  }
  
  // MARK: - Cell For Row At IndexPath
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    // Created cell and casted his class from MainVCCell
    let cell = tableView.dequeueReusableCell(withIdentifier: "MainVCCell") as! MainVCCell
    
    let cellRealm = realm.objects(Organization.self)[indexPath.row].name

    cell.labelCell.text = cellRealm
    
    return cell
  }
  
  // MARK: - TableViewDelegate
  
  
  // RowSelected
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "goToSubcategories", sender: nil)
    receivedCategory = realm.objects(Organization.self)[indexPath.row].name
    
  }
  
  @IBAction func serchButtonPressed(_ sender: UIButton) {
    // MARK: - Fetching data from DB
    
  }
  
  // MARK: - Navigation
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToSubcategories" {
      
    }
  }
  
}
