import UIKit
import CoreData

// MARK: - Data - Categories
let restaurants = Category(name: "Рестораны", image: nil)

// MARK: - Data - Categories - Restaurants
var cofetun = Restaurant(name: "Кофетун", price: 50, location: "г. Грозный, ул. Маяковского 11", image: nil, category: restaurants)





class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate, MainVCDelegate {

    var currentCategory = ""
    
    // DelegateFunction
    func selectedCategory(selectedCategory name: String) {
        currentCategory = name
        
    }
    
    // MARK: - ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - TableViewDataSource
    
    // Sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //  Rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    // Cells
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        // Created cell and casted his class from MainVCCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainVCCell") as! MainVCCell
        
        
        switch indexPath.row {
        case 1:
            cell.labelCell?.text = restaurants.name
        case 2:
            cell.labelCell?.text = "Автомойки"
        case 3:
            cell.labelCell?.text = "Магазины"
        default:
            cell.labelCell?.text = "Пока еще нет данных"
        }
        
        
        return cell
        
        
        
    }
    

    // MARK: - TableViewDelegate

    
    // RowSelected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 1 :
            print("Selected \(indexPath.row) category")
            performSegue(withIdentifier: "goToSubcategories", sender: nil)
        default: tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSubcategories" {
            let controller = segue.destination as! SubCategoriesVC
            controller.viewDidLoad()
            controller.delegate = self
        }
    }
    
    
    
    
    
}
