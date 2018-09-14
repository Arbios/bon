import UIKit

class SubCategoriesVC: UITableViewController {


    
    
    
    // MARK: - Properties
    
    var delegate: MainVCDelegate?
    
    
    // MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        let controller = UIStoryboard.instantiateViewController(withIdentifier: "")
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
        return cell!
    }

}
