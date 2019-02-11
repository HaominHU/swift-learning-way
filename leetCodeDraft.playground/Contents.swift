import Foundation
// #170 Two Sum with data structure

//class TwoSum {
//    var map = [Int: Bool]()
//
//    func add(_ number: Int) {
//        if let _ = map[number] {
//            map[number] = true
//        } else {
//            map[number] = false
//        }
//    }
//
//    func find(_ value: Int) -> Bool {
//        for key in map.keys {
//            let diff = value - key
//            if diff == key && map[key] == true {
//                return true
//            } else if diff != key && map.keys.contains(diff) {
//                return true
//            }
//        }
//        return false
//    }
//}


// #189 Rotate Array
//class Solution {
//    func rotate(_ nums: inout [Int], _ k: Int) {
//
//
//        var newSpace = Array(repeating: 0, count: nums.count)
//
//        for i in 0 ..< nums.count - k % nums.count {
//            newSpace[i + k % nums.count] = nums[i]
//        }
//
//        for i in nums.count - k % nums.count ..< nums.count {
//            newSpace[i + k % nums.count - nums.count] = nums[i]
//        }
//
//        nums = newSpace
//    }
//}



// #198 House Robber

//class Solution {
//    func rob(_ nums: [Int]) -> Int {
//        var preSum = 0
//        var sum = 0
//
//        for num in nums {
//            let tmp = sum
//            sum = max(sum, preSum + num)
//            preSum = tmp
//        }
//        return sum
//    }
//}

// #202 Happy Number
// if reach a cycle start with four, not a happy number

//class Solution {
//    func isHappy(_ n: Int) -> Bool {
//        var num = n
//        while num != 1 && num != 4 {
//            var sum = 0
//
//            while num > 0 {
//                sum += (num % 10) * (num % 10)
//                num /= 10
//            }
//
//            num = sum
//        }
//
//        return num == 1
//    }
//}

// #204 Count Primes
// not left or right to 6 is definetly not prime, left or right to 6 is possibly a  prime
// for loop stride(from: to:) stride(from: through:)
//class Solution {
//    func countPrimes(_ n: Int) -> Int {
//        var count = 0
//        guard n > 2 else {
//            return 0
//        }
//
//        for i in 2..<n  {
//            if isPrime(i) {
//                count += 1
//            }
//        }
//        return count
//
//    }
//
//    func isPrime(_ num: Int) -> Bool {
//
//        if num == 2 || num == 3 {
//            return true
//        }
//
//        if num % 6 != 1 && num % 6 != 5 {
//            return false
//        }
//
//        var tmp = Int(sqrt(Double(num)))
//
//
//        for i in stride(from: 5, through: tmp, by: 6){
//            if num % i == 0 || num % (i + 2) == 0 {
//                return false
//            }
//        }
//
//
//        return true
//
//    }
//}

//another solution
//class Solution {
//    func countPrimes(_ n: Int) -> Int {
//        guard n > 2 else { return 0 }
//        var sieve = [Bool](repeating: true, count: n)
//        var count = n / 2
//        var i = 3
//
//        while i * i < n {
//            if sieve[i] {
//                var j = i * i
//
//                while j < n {
//                    if sieve[j] {
//                        count -= 1
//                        sieve[j] = false
//                    }
//                    j += 2 * i
//                }
//            }
//            i += 2
//        }
//
//        return count
//    }
//}

// #205 Isomorphic Strings

//class Solution {
//    func isIsomorphic(_ s: String, _ t: String) -> Bool {
//        let str1 = Array(s)
//        let str2 = Array(t)
//
//        var map = [Character : Character]()
//
//        for i in 0..<str1.count {
//            // check if has string 1 map
//            if let cache = map[str1[i]] {
//                // if don't match
//                if cache != str2[i] {
//                    return false
//                }
//            } else if map.values.contains(str2[i]) {
//                // if don't have string 1 char, but already has string 2's
//                return false
//            } else {
//                // record map
//                map[str1[i]] = str2[i]
//            }
//        }
//
//        return true
//    }
//}

//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init(_ val: Int) {
//        self.val = val
//        self.next = nil
//    }
// }
//
//class Solution {
//    func reverseList(_ head: ListNode?) -> ListNode? {
//        if(head == nil || head?.next == nil) {
//            return head;
//        }
//        var node = head;
//        var prev: ListNode?;
//
//        while node != nil {
//            let willPre = node?.next;
//            node?.next = prev;
//            prev = node;
//            node = willPre;
//        }
//        return prev;
//    }
//}

//class Solution {
//    func containsDuplicate(_ nums: [Int]) -> Bool {
//        if Set(nums).count != nums.count {
//            return false;
//        }
//        
//        return true
//    }
//}

class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if (Set(nums).count == nums.count) {
            return false
        }
        
        var map = [Int: Int]()
        
        for i in 0..<nums.count {
            if map.keys.contains(nums[i]) {
                let diff = i - map[nums[i]]!
                if diff <= k {
                    return true
                } else {
                    map[nums[i]] = i
                }
                
            } else {
                map[nums[i]] = i
            }
        }
        
        return false
    }
}
