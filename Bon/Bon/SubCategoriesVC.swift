import UIKit

class SubCategoriesVC: UITableViewController, MainVCDelegate {

    func selectedCategory(selectedCategory name: String) {
        print(name)
    }
    
    
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }


}
