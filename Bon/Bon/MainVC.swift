import UIKit
import CoreData


// MARK: - Global variables
var mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
var subController = mainStoryboard.instantiateViewController(withIdentifier: "SubCategoriesVC") as! SubCategoriesVC
var organizations: [Organization] = []

// MARK: - Class - MainVC

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var currentCategory = ""
    
    // MARK: - ViewDidLoad

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Adding test data to organizations
        organizations.append(Organization(name: "Инжир", price: 80, location: "ГрандПарк", image: nil, category: restaurants))
        organizations.append(Organization(name: "Шаурма Номер 1", price: 35, location: "Минутка", image: nil, category: restaurants))
        organizations.append(Organization(name: "Кафе Акбар", price: 15, location: "Микрорайон", image: nil, category: restaurants))
        organizations.append(Organization(name: "WhiteCafe", price: 80, location: "ул. Шейха-Али Митаева", image: nil, category: restaurants))
        organizations.append(Organization(name: "Чайхана", price: 80, location: "Гранд-Парк", image: nil, category: restaurants))
        organizations.append(Organization(name: "Кофетун", price: 50, location: "г. Грозный, ул. Маяковского 11", image: nil, category: restaurants))
        organizations.append(Organization(name: "American Steak House", price: 90, location: "ул. Первомайская 29", image: nil, category: restaurants))
        organizations.append(Organization(name: "Точка", price: 40, location: "г. Грозный, пр-т Победы 20", image: nil, category: restaurants))
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
            cell.labelCell?.text = "Вручную: Магазины"
        default:
            cell.labelCell?.text = "Вручную: Пока еще нет данных"
        }
        
        return cell
        
    }
    

    // MARK: - TableViewDelegate

    
    // RowSelected
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0 :
            performSegue(withIdentifier: "goToSubcategories", sender: nil)
            receivedCategory = "\(categories[indexPath.row].name)"
        case 1 :
            performSegue(withIdentifier: "goToSubcategories", sender: nil)
            receivedCategory = "\(categories[indexPath.row].name)"
        default: tableView.deselectRow(at: indexPath, animated: true)
        }
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSubcategories" {
            
        }
    }
    
}
