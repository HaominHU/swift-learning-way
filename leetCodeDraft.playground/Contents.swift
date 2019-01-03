// #170 Two Sum with data structure
class TwoSum {
    var map = [Int: Bool]()
    
    func add(_ number: Int) {
        if let _ = map[number] {
            map[number] = true
        } else {
            map[number] = false
        }
    }
    
    func find(_ value: Int) -> Bool {
        for key in map.keys {
            let diff = value - key
            if diff == key && map[key] == true {
                return true
            } else if diff != key && map.keys.contains(diff) {
                return true
            }
        }
        return false
    }
}

// #189 Rotate Array
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        
        
        var newSpace = Array(repeating: 0, count: nums.count)
        
        for i in 0 ..< nums.count - k % nums.count {
            newSpace[i + k % nums.count] = nums[i]
        }
        
        for i in nums.count - k % nums.count ..< nums.count {
            newSpace[i + k % nums.count - nums.count] = nums[i]
        }
        
        nums = newSpace
    }
}


