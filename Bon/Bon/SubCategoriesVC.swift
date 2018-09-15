import UIKit



// MARK: - Global variables

var receivedCategory: String = ""




// MARK: - Class - SubCategoriesVC

class SubCategoriesVC: UITableViewController {
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch receivedCategory {
        case "Автомойки":
            return carwashItems.count
        case "Рестораны":
            return restaurantItems.count
        default:
            return 0
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubCategoriesVCCell")
        switch receivedCategory {
        case "Автомойки":
            cell?.textLabel?.text = carwashItems[indexPath.row].name
            print("Получена категория Автомойки")
        case "Рестораны":
            cell?.textLabel?.text = restaurantItems[indexPath.row].name
            print("Получена категория Рестораны")
        default:
            print("Ошибка! Получена неизвестная категориия.")
        }
        
        return cell!
    }
    
}
