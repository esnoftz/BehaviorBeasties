import Foundation
class Reward{
    var name : String
    var cost : Int
    init(name: String, cost: Int) {
        self.name = name
        self.cost = cost
    }
    init(){
        name = "Please Set A Reward"
        cost = 0
    }
    
}
