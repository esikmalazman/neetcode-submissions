class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
    var seen = Set<Int>()


    for number in nums {
        // verify if the number already exist
        if seen.contains(number) {
            return true
        }
        // insert number in collection
        seen.insert(number)
    }

    return false
    }
}

// Data Type: Array
// Looking for: Value that appear more than one in  array
// Output: True if appear duplicate, otherwise return false

// Set - store unique elements


