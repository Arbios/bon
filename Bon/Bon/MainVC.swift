import UIKit
import CoreData

// MARK: - Data - Categories
let restaurants = Category(name: "Рестораны", image: nil)
let carwashes = Category(name: "Автомойки", image: nil)
// MARK: - Data - Categories - Restaurants

var injir = Restaurant(name: "Чайхана", price: 80, location: "Гранд-Парк", image: nil, category: carwashes)
var cofetun = Restaurant(name: "Кофетун", price: 50, location: "г. Грозный, ул. Маяковского 11", image: nil, category: restaurants)

var shellOil = CarWashes(name: "Шелл", price: 10, location: "Заводской район", image: nil, category: carwashes)

// MARK: - Data Arrays

let categories = [restaurants, carwashes]
var mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
var subController = mainStoryboard.instantiateInitialViewController() as! SubCategoriesVC

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var currentCategory = ""
    
    // MARK: - ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        // Получение SubCategoriesVC
//        mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
//        subController = storyboard?.instantiateInitialViewController() as! SubCategoriesVC
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
        case 0:
            cell.labelCell?.text = categories[indexPath.row].name
        case 1:
            cell.labelCell?.text = categories[indexPath.row].name
        case 2:
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
            subController.categoryActivatedName = "Данные из первого контроллера"
        default: tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSubcategories" {
            
        }
    }
    
    
    
    
    
}
