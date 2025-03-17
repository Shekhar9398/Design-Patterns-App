
import Foundation

///MARK:- Without Prototype Pattern

class Car {
    var model: String
    var color: String
    var type: String
    
    init(model: String, color: String, type: String) {
        self.model = model
        self.color = color
        self.type = type
    }
}
///MARK:- Cloning object everytime for to just modifying model name
let bmw = Car(model: "M-3", color: "Blue", type: "Sports")
let audi = Car(model: "R-8", color: "Blue", type: "Sports")

