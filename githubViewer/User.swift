

import Foundation
import Unbox

class User: Unboxable {
    
    var login : String
    var urlImage: String
    
    
    required init(unboxer: Unboxer) throws {
        self.login = try unboxer.unbox(key: "login")
        self.urlImage = try unboxer.unbox(key: "avatar_url")
        
    }

}
