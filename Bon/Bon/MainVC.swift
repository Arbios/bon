import UIKit
import CoreData

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

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
            cell.labelCell?.text = "Рестораны"
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
        performSegue(withIdentifier: "goToSubcategories", sender: nil)
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSubcategories" {
            let controller = segue.destination as! SubCategoriesVC
            controller.viewDidLoad()
        }
    }
    
    
    
}
