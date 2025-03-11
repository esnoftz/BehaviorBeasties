import Foundation
class Reward {
    var name : String
    var cost : Int
    var key = ""
    
    init(name: String, cost: Int) {
        self.name = name
        self.cost = cost
    }
    
    init() {
        name = "Please Set A Reward"
        cost = 0
    }
    
    init(dict: [String: Any]) {
        // Safely unwrapping values from dictionary
        if let c = dict["cost"] as? Int{
            cost = c
        } else {
            cost = 0
        }
        
        if let n = dict["name"] as? String{
            name = n
        } else {
            name = ""
        }

    }
    
    func saveToFirebase() {
        let dict = ["name": name, "cost": cost] as [String: Any]
        AppData.ref.child("rewards").childByAutoId().setValue(dict)
        key = AppData.ref.child("rewards").childByAutoId().key ?? "0"

    }
    
}
