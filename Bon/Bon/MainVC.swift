import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - TableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        // Created cell and casted his class from MainVCCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainVCCell") as! MainVCCell
        switch indexPath.row {
        case 1:
            cell.labelCell?.text = self.categories[0].category
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

}
