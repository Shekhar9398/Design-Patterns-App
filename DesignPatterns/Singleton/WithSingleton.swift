

import Foundation
///MARK:- Singleton Class
class DataManager {
    static let shared = DataManager()
    private init(){}
    
    func personData(){
        print("Person Data")
    }
    
    func studentData(){
        print("StudentData")
    }
}

class PersonInfo{
    func getPersons(){
        DataManager.shared.personData()
    }
}

class StudentInfo{
    func getStudents(){
        DataManager.shared.studentData()
    }
}

/* Pros - We can access methods of singletonClass(DataManager) by single instance(shared)*/
