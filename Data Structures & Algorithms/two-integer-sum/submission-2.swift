class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        // verify if the collection is not empty
        guard !nums.isEmpty else { return [] }

        // store seen values
        var visited:[Int:Int] = [:]

        // iterate the collection
        for (key, number) in nums.enumerated() {
            // find the complement of the target
            let complement = target - number
            // print("complement:\(complement)")

            // verify if this value already exist in hashmap by checking the given compliment number
            if let visitedIndex = visited[complement] {
                // if exist, return the index of complement and current index of iteration
                return [visitedIndex, key]
            }
            // insert the value and its key to the hashmap
            visited[number] = key 
            // print("inserted:\(visited)")
        }

        // return empty by default, because the verfication done in loop
        return []
    }
}


// data structure: array, integer
// looking for: indices that make the sum of the pair value equal to target


// 1. way to store the index and value we already see
// 2. find a complement of value that make up to the target
// 3. if found we return the index of both pair and if not we return empty