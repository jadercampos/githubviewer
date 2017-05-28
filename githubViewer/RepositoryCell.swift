
import Foundation
import UIKit


class RepositoryCell: UITableViewCell
{

    @IBOutlet weak var repositoryNameLabel: UILabel!
   
    @IBOutlet weak var repositoryLanguageLabel: UILabel!
    
    func fillCell(repository: Repository) {
        
        
        
        self.repositoryNameLabel.text = repository.name
        
        self.repositoryLanguageLabel.text = repository.language
        
    }
    
    
    
}
