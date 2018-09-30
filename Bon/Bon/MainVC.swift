import UIKit


// MARK: - Global variables
var mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
var subController = mainStoryboard.instantiateViewController(withIdentifier: "SubCategoriesVC") as! SubCategoriesVC
var organizations: [String] = []
// Категории
var categories: [String] = []

// MARK: - Class - MainVC
class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  
  
  static let mainVC = MainVC()
  
  var currentCategory = ""
  // MARK: - ViewDidLoad
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let organization = Organization()
    organization.distance = 8
    organization.name = "Кофетун"
    print("\(organization.name)" + "\(organization.distance)")
    
    print(organizations)
  }
  
  // MARK: - TableViewDataSource
  
  // Sections
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  //  Rows
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return categories.count
  }
  
  // Cells
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

    // Created cell and casted his class from MainVCCell
    let cell = tableView.dequeueReusableCell(withIdentifier: "MainVCCell") as! MainVCCell
    cell.labelCell.text = categories[indexPath.row]
    
    return cell
  }
  
  // MARK: - TableViewDelegate
  
  
  // RowSelected
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    performSegue(withIdentifier: "goToSubcategories", sender: nil)
    receivedCategory = categories[indexPath.row]
    
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
