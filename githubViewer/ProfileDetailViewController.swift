

import UIKit
import Alamofire

import SDWebImage


class ProfileDetailViewController : UITableViewController {
    
    
    @IBOutlet weak var userAvatarImageView: UIImageView!
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    var profileRepositorys : [Repository] = []
    
    @IBOutlet weak var RepositoryNameLabel: UILabel!

    
    @IBOutlet var pullRequestTableView: UITableView!
    
     override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.userAvatarImageView.sd_setImage(with: NSURL(string: profileRepositorys[0].owner.urlImage) as URL!)
        
        self.userAvatarImageView.layer.cornerRadius = self.userAvatarImageView.frame.size.width/2
        self.userAvatarImageView.clipsToBounds = true
        self.userAvatarImageView.contentMode = .scaleAspectFit
        
        self.userNameLabel.text = profileRepositorys[0].owner.login
       
        
    }
    
    
    
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        
        return self.profileRepositorys.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RepositoryPrototypeCell", for: indexPath as IndexPath) as! RepositoryCell
        
        
        let repository = self.profileRepositorys[indexPath.row]
        
        cell.fillCell(repository: repository)
        
        self.view.layoutIfNeeded()
        
        
        return cell
    }
    
    
}



