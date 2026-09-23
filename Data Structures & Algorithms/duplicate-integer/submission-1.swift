class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        // verify the input is exist, otherwise return false
        guard !nums.isEmpty else { return false }

        // store unique elements once we iterate
        var seen = Set<Int>()

        for number in nums {
            // verify the number already exist in storage, return true
            if seen.contains(number) {
                return true
            }
            // otherwise we insert the elements in storage 
            seen.insert(number)
        }

        // by default, return false as let say there no duplicate item found
        return false
    }
}

// data structure: array, integer, boolean
// looking for: value count more than once

// 1. Set to identify duplicates as set only can contains unique elements in collection