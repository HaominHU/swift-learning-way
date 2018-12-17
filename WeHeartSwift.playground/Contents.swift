import UIKit

let life = [("Who will you go with?", ["mother", "father"]), ("Who will you marry?", ["Anna", "Elise", "Jean"])]

let decision = life.count
var choices = 0
var outcomes = 1
for (_ , answer) in life {
    choices += answer.count
    outcomes *= answer.count
}

print("decisions = \(decision)")
print("choices = \(choices)")
print("outcomes = \(outcomes)")

class Robot {

    func Rock(_ steps : Int) {
        for _ in 0..<steps {
            print("Rock")
        }
    }

    func Roll(_ meters : Int) {
        for _ in 0..<meters {
            print("Roll")
        }
    }

    func Turn(_ side : String) {
        print("Turn(\(side))")
    }

    func Door(_ action : String) {
        print("Door(\(action))")
    }

    func Charge(_ amount : Int) {
        print("Charge(\(amount))")
    }

    func Deliver(_ item : String) {
        print("Deliver(\(item))")
    }
}

func getRoutes(floors: Int, length: Int, steps: Int, pizzaPrice: Int) {
    let robot = Robot()
    robot.Door("Open")
    robot.Roll(length)
    for _ in 0..<floors {
        robot.Turn("Left")
        robot.Rock(steps)
        robot.Turn("Left")
        robot.Roll(length)
    }
    robot.Turn("Right")
    robot.Door("Knock")
    robot.Charge(pizzaPrice)
    robot.Deliver("Pizza")
}

getRoutes(floors: 3, length: 3, steps: 4, pizzaPrice: 60)

let recipes = ["Put eggs in a frying pan", "Cut the beef", "Boil the beef"]
let keyword = "beef"
var output = [String]()

for str in recipes {
    if(str.contains(keyword)) {
        output.append(str)
    }
}

print(output)

func calTwoPower(_ n: Int) -> Int {

    if n == 0 {
        return 1
    }
    var result = 2
    for _ in 1..<n {
        result *= 2
    }

    return result
}

calTwoPower(0)

var n = 5
func pow2N(N:Int) -> Int {
    if N == 0 {
        return 1
    }
    else {
        var halfN = N/2
        print(halfN)
        var halfPowN = pow2N(N: halfN)
        var res = halfPowN * halfPowN
        if N - halfN > halfN {
            res *= 2
        }
        return res
    }
}

var pow2n = pow2N(N:n)
print(pow2n)

func largestCommonDivisor(_ a: Int, _ b: Int) -> Int {
    if(a == 0 || b == 0) {
        return 1
    }

    if(a % b == 0) {
        return b
    }
    if(b % a == 0) {
        return a
    }


    var large = a > b ? a : b
    var small = a + b - large
    var diff = 0

    while large - small != 0 {
        diff = large - small
        large = diff > small ? diff : small
        small = diff + small - large
    }

    return diff
}

largestCommonDivisor(0, 9)

func powerSum(_ n: Int, _ m: Int) -> Int {
    var sum = 0
    for i in 1...m {
       sum +=  calPower(i, n)
    }
    return sum
}

func calPower(_ i: Int, _ n: Int) -> Int{
    var subSum = i
    for _ in 1..<n {
     subSum *= i
    }

    return subSum
}

powerSum(2, 5)

func eulerNumber(_ n: Int) -> Double {

    if(n == 0) {
        return 1
    }

    var sum: Double = 0.0
    for i in 1...n {
        var product = 1.0
        for index in 1...i {
            product *= Double(index)
        }
        sum += 1.0/product
    }
    return sum + 1.0
}

eulerNumber(5)

func calLayer(_ depth:Int) -> Double{
    if(depth == 0) {
        return 1.0
    }

    return 1.0 + 1.0 / calLayer(depth - 1)
}

print(calLayer(20))

let numbers = [3, 6, 4, 15, 30]
let queries = [(1,3),(0,4)]

func partialSum(_ numbers: [Int], _ queries: [(Int, Int)]) {
    for query in queries {
        var sum = 0
        for index in query.0...query.1 {
            sum += numbers[index]
        }
        print(sum)
    }
}

partialSum(numbers, queries)

