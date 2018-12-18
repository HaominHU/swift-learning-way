import UIKit

func naiveHash(_ string: String) -> Int {
    let unicodeScalars = string.unicodeScalars.map({
        return Int($0.value)
    })
    
    return unicodeScalars.reduce(0, {
        acc, curr in
            return acc + curr
    })
}

// result not change
naiveHash("abc")
naiveHash("bca")

func djb2Hash(_ string: String) -> Int {
    let unicodeScalars = string.unicodeScalars.map({
        return Int($0.value)
    })
    return unicodeScalars.reduce(5381, {
        return ($0 << 5) &+ $0 &+ Int($1)
    })
}

djb2Hash("abc")
djb2Hash("bca")



var hasTable = HashTable<String, Int>(capacity: 5)
hasTable["one"] = 1
let x = hasTable["two"]
