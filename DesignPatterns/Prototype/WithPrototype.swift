protocol Prototype {
    func clone() -> Self
}

 class Cars: Prototype {
    var model: String
    var color: String
    var type: String
    
    required init(model: String, color: String, type: String) {
        self.model = model
        self.color = color
        self.type = type
    }
    
    func clone() -> Self {
        return Swift.type(of: self).init(model: self.model, color: self.color, type: self.type)
    }
}

let nissan = Cars(model: "Nissan", color: "Red", type: "GT")
let mahindra = nissan.clone()

///MARK:- Uage -->  mahindra.model = "Mahindra"
///we can clone the instance and modify specofic property only
