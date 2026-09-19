class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    // store the seen numbers
    var store:[Int:Int] = [:]

    for (index, value) in nums.enumerated() {
        print(index, value)
        let complement = target - value
       //  print("complement:\(complement)")

        // looking for index of complement value in store and return it index and current loop index from the array
        if let complementIndex = store[complement] {
            //print("the indices are: \(complementIndex), \(index)")
            return [complementIndex, index]
        }

        // insert the number and index if already evaluated
        store[value] = index
    }

    return []
    }
}

// data structure involve: array, integer
// looking for: number in collection to complement/adding up to target and return it index
// contrainst: one valid answer exists