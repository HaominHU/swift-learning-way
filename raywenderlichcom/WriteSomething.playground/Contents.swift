//: Playground - noun: a place where people can play

/*
 *07/08/2018
//While loops
var counter = 0

while counter < 10{
    print("value is \(counter)")
    counter += 1
}

print("------")

counter = 0
var roll = 0

repeat{
    counter += 1
    roll = Int(arc4random_uniform(6))
    print("After \(counter) rolls, the roll is \(roll)")
}while roll != 0

//For loops (where)

let range = 1...10

for i in range{
    let square = i * i
    print("Square is \(square)")
}

print("-----------")

for i in range where (i == 1 || i == 4 || i == 9){
    
    if i == 1{
        continue
    }
    if i == 9 {
        break
    }
    let squareRoot = sqrt(Double(i))
    print("Square Root is \(squareRoot)")
    
}

print("------")

//switch
let people = (name: "Leon", age: 24)
switch people{
case (let name, 0...2):
    print("\(name) is Infant")
case(let name, 3...23):
    print("\(name) is Man")
case let (name, age) where age > 40:
    print("\(name) is Old")
case _ where people.age == 24:
    print("Be successful")
    //(_, let age)
case let(_, age) where age == 25:
    print("Find someone with you")
case (let name, let age) where age > 25 && age <= 40:
    print("\(name) is Man")
default:
    print("Invalid")
    //or let(name, age)
    // do something...
    //or let people
    //people.name, people.age ...
}
*/

//func printFullName(_ firstName: String, and lastName: String){
//    print(firstName + " " + lastName)
//}
//printFullName("Leon", and: "HU")

//func calculateFullName(_ fisrtName: String, and lastName: String) ->(name: String, length: Int) {
//    return (fisrtName + " " + lastName, fisrtName.count + lastName.count)
//}
//
//let (name, length) = calculateFullName("Leon", and: "HU")
//name
//length

//function can be considered as a type which assign in function
//func add(_ a: Int, _ b: Int) -> Int{
//    return a + b
//}

//for closure
//var add: (Int, Int) -> Int = {a, b in
//    return a + b
//}
//
//func getResult(_ closure: (Int, Int) -> (Int), _ a: Int, _ b: Int){
//    let value = closure(a,b)
//    print(value)
//}

//getResult(add, 4, 2)


//OPTIONS
//var myFavouriteSong: String? //= "Savin me"

//let parseInt = Int("dog")

//for options:
//if let myFavouriteSong = myFavouriteSong{
//    print(myFavouriteSong);
//}else{
//    print("I don't have one");
//}

//func knowMyFavouriteSong(_ song: String?){
//    guard let song = song else {
//        print("I don't have one")
//        return
//    }
//    print(song)
//}
//knowMyFavouriteSong("My love")


//var song = myFavouriteSong ?? "Nothing"
//print(song)

//var players = ["A", "B", "C", "D", "E", "F"];
//var indexOfD = players.index(of: "D")
//if let indexOfD = indexOfD{
//    print(indexOfD)
//}else {
//    print("no")
//}
//
//let scores = [2,2,8,6,1,2,1]
//
//for (index, player) in players.enumerated() {
//    print("\(index + 1). player: \(players[index]), score: \(scores[index])")
//}

//var info = ["Name": "Leon", "city": "Pittsburgh", "State": "PA"]
//info["city"] = "Stay"
//info["State"] = "Same"
//print(info)
//
//func printLocation(_ person:[String: String]) {
////    if let state = person["State"], let city = person["city"] {
////        print("\(state) + \(city)" )
////    } else {
////        print("nothing")
////    }
//    guard let state = person["State"], let city = person["city"] else {
//        return
//    }
//    print(state + city)
//}

//printLocation(info)


//closure
/*format:
 var closure () -> TYPE = { a, b in
    return
 }
 */

//let names = ["aaa", "bbbbb", "cc", "dddddd"];
//let concatenation = names.reduce("") {result, string -> String in
//    return result + " " + string
//}
//print(concatenation)

//let moreThanFour = names.filter { name in
//    return name.count > 4
//}
//print(moreThanFour)
//let newConcatenation = moreThanFour.reduce("") { result, name in
//    return result + " " + name
//}

//let nameAndAges = ["a" : 12, "b": 15, "c": 23, "d": 9];
//let over18 = nameAndAges.filter { pair in
//    return pair.value > 18
//}
//let over18Name = over18.map { people in
//    return people.key
//}
//print(over18Name)

//struct Pizza {
//    var size: Double
//    var topping: String
//    var price: Int
//}
//
//let pizza = Pizza(size: <#T##Double#>, topping: <#T##String#>, price: <#T##Int#>)

//properties: Computer properties ({get{}set{}})& store properties observers({didSet{}}) & static var & lazy var with init()

//struct Temperature {
//    var degreesF: Double {
//        didSet {
//            if degreesF > 100 {
//                print("Too hot")
//            }
//        }
//    }
//    var degreesC: Double {
//        get {
//            return (degreesF - 32)/1.8
//        }
//
//        set {
//            degreesF = newValue * 1.8 + 32
//        }
//    }
//}
//
//var temp = Temperature(degreesF: 200)
//print(temp.degreesC)
//temp.degreesC = 10
//print(temp.degreesF)
//temp.degreesF = 101
//print(temp)

//PROTOCOL
/*public protocol CustomStringConvertible {
 var description: String {
    get
 }
 }*/
//METHOD
// mutating for var change in structure, static for structure's directly use instead of instantiation, init()/init(var) to initialize the value or constructure, extension to expand structure with method, or move init() to extension so that in structure init(var) is no need to declare

//struct Student {
//    var firstName: String
//    var lastName: String
//    var grade: Int
//}
//
//struct Classroom {
//    var className: String
//    var students: [Student]
//
//    func highestGrade() -> Int {
//        let grades = students.map { std in
//            return std.grade
//        }
//        print(grades)
//        let highGrade = grades.reduce(0) { result, value in
//            return value > result ? value : result
//        }
//
//        return highGrade
//    }
//}
//
//var leon = Student(firstName: "Leon", lastName: "HU", grade: 100)
//var Ray = Student(firstName: "Ray", lastName: "W", grade: 40)
//var room = Classroom(className: "abc", students: [leon, Ray])
//print(room.highestGrade())
//
//extension Classroom {
//    mutating func curveGrades() {
//        let difference = 100 - highestGrade()
//        for i in 0..<students.count {
//            students[i].grade += difference
//        }
//        students.sort { std1, std2 in
//            return std1.grade >  std2.grade
//        }
//
//    }
//}
//room.curveGrades()
//print(room)
//
//extension Student: CustomStringConvertible {
//    var description: String {
//        return "\(lastName), \(firstName):\(grade)"
//    }
//}


//Class is for reference, they gonna share the object, Struct is the copy of value
//class List {
//    var name: String
//    var movies: [String]
//
//    init(name: String) {
//        self.name = name
//        self.movies = []
//    }
//
//    func print(){
//        Swift.print(movies)
//    }
//}
//class User {
//    var wishList:[String: List] = [:]
//
//    func addList(_ list: List) {
//        wishList[list.name] = list
//    }
//
//    func list(_ forName: String) -> List? {
//        return wishList[forName]
//    }
//}
//
//var one = List(name: "a")
//var john = User()
//var jane = User()
//
//john.addList(one)
//jane.addList(one)
//
//jane.wishList["a"]?.movies.append("a")
//jane.wishList["a"]?.movies.append("b")
//john.wishList["a"]?.movies.append("c")
//
//john.list("a")?.print()
//jane.list("a")?.print()

//struct Grade {
//    var letter: String
//    var point: Double
//
//}
//
//class Student {
//    var grade: Grade
//
//    init(grade: Grade){
//        self.grade = grade
//    }
//}
//var sgrade = Grade(letter: "A", point: 3)
//let std = Student(grade: sgrade)
//let std_2 = Student(grade: sgrade)
//std_2.grade.point = 4
//print(std.grade.point)

//initializar: init, required init, convenience init
class Animal {
    var name: String
    
    required init(name: String) {
        self.name = name
    }
    
    func speak() {
        
    }
}

class Dog: Animal {
    var numTricksLearned: Int
    
    required init(name: String) {
        self.numTricksLearned = 0
        super.init(name: name)
        speak()
    }
    
    init(name: String, numTricksLearned: Int) {
        self.numTricksLearned = numTricksLearned
        super.init(name: name)
        speak()
    }
    
    override func speak() {
        print("Bow")
    }
}

extension Dog {
    convenience init() {
        self.init(name: "Puppy", numTricksLearned: 5)
    }
}

