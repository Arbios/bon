import UIKit
import CoreData


// MARK: - Global variables
var mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
var subController = mainStoryboard.instantiateViewController(withIdentifier: "SubCategoriesVC") as! SubCategoriesVC
var organizations: [Organization] = []
// Категории
var categories: [Category] = []

// MARK: - Class - MainVC
class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  
  
  static let mainVC = MainVC()
  
  var currentCategory = ""
  var context: NSManagedObjectContext?
  // MARK: - ViewDidLoad
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Adding test categories
    let categoryEntity = NSEntityDescription.entity(forEntityName: "Category", in: context!)!
    let restaurantTest = NSManagedObject(entity: categoryEntity, insertInto: context)
    restaurantTest.setValue("Автомойки", forKey: "name")
    restaurantTest.setValue("Рестораны", forKey: "name")
    do {
      try context?.save()
      print("Data saved to context")
    } catch {
      print("Ошибка при сохранении в контекст")
    }
    
    categories = fetchData(category: "Category")
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
    receivedCategory = "\(categories[indexPath.row].name ?? "Категория не получена")"
    
  }
  
  func fetchData(category: String) -> [Category] {
    let fetchRequest = NSFetchRequest<Category>(entityName: category)
    var resultString: [Category] = []
    //    fetchRequest.fetchLimit = 1
    //    let predicate = NSPredicate(format: "name contains 'o'")
    //    fetchRequest.predicate = predicate
    do {
      let result = try context?.fetch(fetchRequest)
      for i in result! {
        resultString.append(i)
      }
    } catch {
      print("Ахахаха, ты не получишь никаких данных с этого жалкого фетч реквеста, потому что ты дебил не смог правильно сформулировать запрос.")
    }
    return resultString
  }
  
  @IBAction func serchButtonPressed(_ sender: UIButton) {
    // MARK: - Fetching data from DB
    print(fetchData(category: "Category"))
    
  }
  
  // MARK: - Navigation
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "goToSubcategories" {
      
    }
  }
  
}
