import UIKit



// MARK: - Global variables

var receivedCategory: String = ""



// MARK: - Class - SubCategoriesVC

class SubCategoriesVC: UITableViewController {
    // MARK: - Class variables
    
    
    var organization: [String] = []
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        organization = organizations.filter({ (org) -> Bool in
          return org == receivedCategory
        })
    }
    
    
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return organization.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubCategoriesVCCell")
        
        cell?.textLabel?.text = self.organization[indexPath.row]
        return cell!
    }
    
}
