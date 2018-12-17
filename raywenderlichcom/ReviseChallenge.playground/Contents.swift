//: Playground - noun: a place where people can play

import UIKit
import Foundation

//Challenge 
//func swapVar<T>(v1: inout T, v2: inout T){
//    (v1, v2) = (v2, v1)
//}
//
//var v1 = "a"
//var v2 = "b"
//swapVar(v1: &v1, v2: &v2)
//print("v1 is \(v1), and v2 is \(v2)")



//Challenge 2:
//func flexString(s1: String = "", s2: String = "") -> String{
//    return (s1 + s2).isEmpty ? "None" : s1 + s2
//}
//
//print(flexString())

//Challenge 3
//func sumAny(anys: Any...) -> String {
//    return String((anys.map({item in
//        switch item{
//        case "" as String, 0 as Int:
//            return -10
//        case let s as String where Int(s)! > 0 :
//            return Int(s)!
//        case is Int:
//            return item as! Int
//        default:
//            return 0
//        }
//    }) as [Int]).reduce(0){
//        $0 + $1
//        })
//}
//
//let result1 = sumAny(anys: Double(), 10, "-10", 2)

//Challenge 4
//func countFrom(from: Int, to: Int){
//    print(from, terminator: " ")
//    if from < to {
//        countFrom(from: from + 1, to: to)
//    }
//}
//
//countFrom(from: 1, to: 5)

//Challenge 5
//func reverseString(input: String, output: String = "") -> String{
//    if input.isEmpty{
//        return output
//    }
//    else{
//        return reverseString(input: input.substring(to: input.index(input.endIndex, offsetBy: -1)), output: output + input.substring(from: input.index(input.endIndex, offsetBy: -1)))
//    }
//}

//Challenge 6
//func *(left: Character, right: Double) -> String{
//    return charMul(char:left, result: "", time: right)
//}
//
//func charMul(char: Character, result: String, time: Double) -> String{
//    
//    var result = result
//    if Int64(result.characters.count) < Int64(time){
//        result.append(char)
//        return charMul(char: char, result: result, time: time)
//    }
//    else{
//        return result
//    }
//}
//
//"-" * 10


//Challenge 7
//func doWork() -> Bool{
//    return arc4random() % 10 > 5
//}
//
//func printSuccess() -> Bool {
//    print("Success")
//    return true
//}
//
//func printFail() -> Bool{
//    print("Fail")
//    return true
//}
//
//doWork() && printSuccess() || printFail()

//Challenge 8 

extension Array {
    func swapElementAtIndex(index: Int) -> (Int) -> Array {
        return {
            withIndex in
            var result = self
            if index < self.count && withIndex < self.count {
            (result[index], result[withIndex]) = (result[withIndex], result[index])
            }
            return result
        }
        
    }
    
    var arrayWithElementAtIndexToFront: (Int) -> Array{
        return swapElementAtIndex(index: 0 as Int)
    }
    
    var arrayWithElementAtIndexToBack: (Int) -> Array{
        return swapElementAtIndex(index: self.count - 1 as Int)
    }
}

let list = [1,4,5,6,20,50]
list.arrayWithElementAtIndexToFront(4)
