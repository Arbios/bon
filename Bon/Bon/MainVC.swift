import UIKit
import CoreData


// MARK: - Global variables
var mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
var subController = mainStoryboard.instantiateViewController(withIdentifier: "SubCategoriesVC") as! SubCategoriesVC


// MARK: - Class - MainVC

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var currentCategory = ""
    
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
