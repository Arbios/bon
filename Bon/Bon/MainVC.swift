import UIKit
import CoreData


// MARK: - Global variables
var mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
var subController = mainStoryboard.instantiateViewController(withIdentifier: "SubCategoriesVC") as! SubCategoriesVC
var organizations: [Organization] = []
var categories: [Category] = []

// MARK: - Class - MainVC
class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  var currentCategory = ""
  var context = CoreDataHelper()
  // MARK: - ViewDidLoad
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
    // Adding test categories
    
    
    
    categories.append(Category(name: "Рестораны", image: nil))
    categories.append(Category(name: "Автомойки", image: nil))
    categories.append(Category(name: "Фаст-фуд", image: nil))
    categories.append(Category(name: "Спортзал", image: nil))
    categories.append(Category(name: "Дом торжеств", image: nil))
    categories.append(Category(name: "Парикмахерские", image: nil))
    categories.append(Category(name: "Продуктовые магазины", image: nil))
    categories.append(Category(name: "Услуги", image: nil))
    
    // Adding test data to organizations
    // Important! Need to decide, how to replcae unsafe selection categories
    organizations.append(Organization(name: "Инжир", price: 80, location: "ГрандПарк", image: nil, category: categories[0]))
    organizations.append(Organization(name: "Шаурма Номер 1", price: 35, location: "Минутка", image: nil, category: categories[0]))
    organizations.append(Organization(name: "Кафе Акбар", price: 15, location: "Микрорайон", image: nil, category: categories[0]))
    organizations.append(Organization(name: "WhiteCafe", price: 80, location: "ул. Шейха-Али Митаева", image: nil, category: categories[0]))
    organizations.append(Organization(name: "Чайхана", price: 80, location: "Гранд-Парк", image: nil, category: categories[0]))
    organizations.append(Organization(name: "Кофетун", price: 50, location: "г. Грозный, ул. Маяковского 11", image: nil, category: categories[0]))
    organizations.append(Organization(name: "American Steak House", price: 90, location: "ул. Первомайская 29", image: nil, category: categories[0]))
    organizations.append(Organization(name: "ILIS FastFood", price: 90, location: "ул. Первомайская 29", image: nil, category: categories[2]))
    organizations.append(Organization(name: "Легион", price: 90, location: "ул. Первомайская 29", image: nil, category: categories[3]))
    organizations.append(Organization(name: "Дом торжеств Имандис", price: 90, location: "ул. Первомайская 29", image: nil, category: categories[4]))
    organizations.append(Organization(name: "Супермаркет Хайр", price: 10, location: "ул. Сквозная", image: nil, category: categories[6]))
    organizations.append(Organization(name: "Точка", price: 40, location: "г. Грозный, пр-т Победы 20", image: nil, category: categories[2]))
    organizations.append(Organization(name: "ShellOil", price: 40, location: "г. Грозный, пр-т Победы 20", image: nil, category: categories[1]))
    organizations.append(Organization(name: "Ташкала", price: 40, location: "г. Грозный, пр-т Победы 20", image: nil, category: categories[1]))
    organizations.append(Organization(name: "Гарант", price: 40, location: "г. Грозный, пр-т Победы 20", image: nil, category: categories[1]))
    organizations.append(Organization(name: "НаноМойка", price: 40, location: "г. Грозный, пр-т Победы 20", image: nil, category: categories[1]))
    organizations.append(Organization(name: "Автомойка AMG", price: 40, location: "г. Грозный, пр-т Победы 20", image: nil, category: categories[1]))
    
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
    
    
    
    
    cell.labelCell.text = categories[indexPath.row].name
    
    return cell
    
  }
  
  
  // MARK: - TableViewDelegate
  
  
  // RowSelected
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    performSegue(withIdentifier: "goToSubcategories", sender: nil)
    receivedCategory = "\(categories[indexPath.row].name)"
    
  }
  
  
  // MARK: - Navigation
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToSubcategories" {
      
    }
  }
  
}
