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
            return organizations.count
        case "Рестораны":
            return organizations.count
        default:
            return 0
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubCategoriesVCCell")
        switch receivedCategory {
        case "Автомойки":
            cell?.textLabel?.text = organizations[indexPath.row].name
        case "Рестораны":
            cell?.textLabel?.text = organizations[indexPath.row].name
        default:
            print("Ошибка! Получена неизвестная категориия.")
        }
        
        return cell!
    }
    
}
