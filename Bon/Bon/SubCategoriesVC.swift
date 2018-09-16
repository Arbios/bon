import UIKit



// MARK: - Global variables

var receivedCategory: String = ""



// MARK: - Class - SubCategoriesVC

class SubCategoriesVC: UITableViewController {
    // MARK: - Class variables
    
    
    var organization: [Organization] = []
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        organization = organizations.filter({ (org) -> Bool in
            return org.category.name == receivedCategory
        })
    }
    
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch receivedCategory {
        case "Автомойки":
            return organization.count
        case "Рестораны":
            return organization.count
        default:
            return 0
        }
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubCategoriesVCCell")
        switch receivedCategory {
        case "Автомойки":
            cell?.textLabel?.text = self.organization[indexPath.row].name
        case "Рестораны":
            cell?.textLabel?.text = self.organization[indexPath.row].name
        default:
            print("Ошибка! Получена неизвестная категориия.")
        }
        
        return cell!
    }
    
}
