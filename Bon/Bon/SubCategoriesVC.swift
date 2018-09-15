import UIKit

class SubCategoriesVC: UITableViewController {
    
    // MARK: - ViewDidLoad
    var categoryActivatedName: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubCategoriesVCCell")
        cell?.textLabel?.text = categoryActivatedName
        return cell!
    }

}
