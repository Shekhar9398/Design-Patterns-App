
import Foundation

///MARK:- Without Singleton
class ShareData{
    func personData(){
        print("Person Data")
    }
    func studentData(){
        print("Student Data")
    }
}

class Person {
    let person = ShareData()
    func getData(){
        person.personData()
    }
}

class Student {
    let student = ShareData()
    func getData(){
        student.studentData()
    }
}

/* Cons - We need to create an instance of ShareData class everytime when we want to use its methods */
