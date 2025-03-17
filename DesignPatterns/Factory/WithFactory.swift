
import Foundation

///MARK:- With Factory pattern swift

protocol Cake {
    func bake()
}

class ChocolateCake: Cake {
    func bake() {
        print("Your Chocolate cake is ready")
    }
}

class PineappleCake: Cake {
    func bake() {
        print("Your Pineapple Cake is Ready")
    }
}

protocol MakeCake {
    func createCake() -> Cake
}

class ChocolateCakeFactory: MakeCake {
    func createCake() -> Cake {
        return ChocolateCake()
    }
}

class PineappleCakeFactory: MakeCake {
    func createCake() -> any Cake {
        return PineappleCake()
    }
}


func makeBirthdayCake(factory: MakeCake){
    let cake = factory.createCake()
    cake.bake()
}
///MARK: Usage
//makeBirthdayCake(factory: ChocolateCakeFactory())
//makeBirthdayCake(factory: PineappleCakeFactory())

