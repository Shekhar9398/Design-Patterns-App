import Foundation

/// MARK:- Without Factory Pattern
protocol Cake1 {
    func bake()
}

class ChocolateCake1: Cake {
    func bake() {
        print("Your Chocolate Cake is Ready 🍫")
    }
}

class PineappleCake1: Cake {
    func bake() {
        print("Your Pineapple Cake is Ready 🍍")
    }
}

// Function to create and bake a cake directly (without factories)
func makeBirthdayCake1(type: String) {
    let cake: Cake
    switch type {
    case "Chocolate":
        cake = ChocolateCake()
    case "Pineapple":
        cake = PineappleCake()
    default:
        print("Invalid cake type!")
        return
    }
    cake.bake()
}


///MARK: Usage
//makeBirthdayCake1(type: "Chocolate")
//makeBirthdayCake1(type: "Pineapple")
