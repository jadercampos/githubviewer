
import UIKit

import Alamofire

import UnboxedAlamofire


class SearchProfileViewController: UIViewController {
    
    @IBOutlet weak var userNameTextfield: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func searchProfiles(_ sender: Any) {
        
        
        
        if let userName = userNameTextfield.text {
            
            
            let url = "https://api.github.com/users/\(userName)/repos";
            
            Alamofire.request(url, method: .get).responseArray { (response: DataResponse<[Repository]>) in
                
                if let gitRepositorysResponse = response.result.value {
                    
                    let myVC = self.storyboard?.instantiateViewController(withIdentifier: "profileDetailVC") as! ProfileDetailViewController
                    
                    
                    myVC.profileRepositorys = gitRepositorysResponse
                    
                    self.navigationController?.pushViewController(myVC, animated: true)
                    
                    
                    
                }
                
                if let error = response.result.error as? UnboxedAlamofireError {
                    print("error: \(error.description)")
                }
                
            }
            
            
            
            
        }
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

