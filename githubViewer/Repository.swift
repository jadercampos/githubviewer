
import Foundation
import Unbox



class Repository: Unboxable {
    
    var name : String
    var fullName : String
    var owner : User
    var language : String
    
    required init(unboxer: Unboxer) throws {
       
        self.name = try unboxer.unbox(key: "name")
        self.fullName = try unboxer.unbox(key: "full_name")
        self.owner = try unboxer.unbox(key: "owner")
        
        do {
          self.language = try unboxer.unbox(key: "language")

        } catch {
            self.language = ""
        }
        
    }
    
   
    
    
}
